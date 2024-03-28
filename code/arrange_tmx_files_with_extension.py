#!/usr/bin/env python3

import os
from pathlib import Path
import sys
import lxml
from bs4 import BeautifulSoup
import re
from glob import glob
from itertools import chain
import fnmatch
import requests
import argparse
from rich import print

# ############# PROGRAM DESCRIPTION ###########################################

app_desc = "Arrange TMs by domain on batch transition"

# initialize arg parser with a description
parser = argparse.ArgumentParser(description=app_desc)
parser.add_argument("-V", "--version", help="show program version", action="store_true")
parser.add_argument(
    "-r", "--repo", help="specify path to the repository's root directory")

args = parser.parse_args()

# check for -V or --version
version_text = f"{app_desc} v. 0.1"
if args.version:
    print(version_text)
    sys.exit()

if args.repo:
    root_dir_path = args.repo.strip()
else:
    print("Required argument not found. Run this script with `--help` for details.")
    sys.exit()

args = parser.parse_args()

# ############# BUSINES LOGIC ###########################################

def get_locales():
    url = 'https://capps.capstan.be/langtags_json.php'
    response = requests.get(url)
    return response.json()


def search_file_in_directories(dir_path, folders, filename):
    for folder in folders:
        directory = os.path.join(dir_path, folder)
        # Iterate through all files and subdirectories in the given directory
        for root, dirs, files in os.walk(directory):
            # Check if the filename exists in the current directory
            if filename in files or f"{filename}{idle_extension}" in files:
                return True
    return False


def has_new_version(file_path, tmx_domain):
    filename = os.path.split(file_path)[-1]
    if trend_tag in filename and tmx_domain in filename:
        new_version_fname = filename.replace(trend_tag, new_tag).removesuffix(idle_extension)
        folders = ["tm/auto", "tm/enforce"]
        if search_file_in_directories(root_dir_path, folders, new_version_fname):
            return True
    return False


def get_domain(file):
    # get file's basename if it's a path (linux specific)
    file_name = file.split("/")[-1] if "/" in file else file
    # print(f"::: Get domain of '{file_name}'")
    pattern = "\.tmx(\.zip)?(\.idle)?$"

    if file_name.startswith("PISA_") and re.search(pattern, file_name):
        # for tmx files
        tentative_domain = file_name.split("_")[2]
        if tentative_domain in allowed_domains["QQS"] or tentative_domain in allowed_domains["QQA"]:
            # then it's not the domain, but the actual questionnaire
            return next((key for key, value in allowed_domains.items() if tentative_domain in value), None)
        return tentative_domain
    else:
        # for batch folders or batch TMs
        if "_QQS_" in file_name or "_QQA_" in file_name: # CBA QQ
            return file_name.split("_")[1]
        elif "_QQSP_" in file_name or "_QQAP_" in file_name: # PBA QQ
            return file_name.split("_")[1].removesuffix("P")
        else:
            return file_name.split("_")[2].split("-")[0] # anything else


def delete_file(file):
    print(f">>> Delete {file.replace(root_dir_path, '')} !!!")
    # file = Path(file) if isinstance(file, str) else file # only needed with unlink()
    try:
        # file.unlink()
        os.remove(file)
        print(f"The file {file} has been successfully deleted.")
    except FileNotFoundError:
        print(f"The file {file} does not exist.")
    except Exception as e:
        print(f"An error occurred: {e}")


def create_dir(dir_path):
    try:
        Path(dir_path).mkdir(parents=True, exist_ok=True)
        # print(f"The folder {dir_path} and any necessary ancestors in the path have been created.")
    except Exception as e:
        print(f"An error occurred: {e}")


def move_file(orig_path, dest_path):
    print(f">>> Move {orig_path.replace(root_dir_path, '')} to {dest_path.replace(root_dir_path, '')} !!!")
    dir_path, file = os.path.split(dest_path)
    create_dir(dir_path)
    try:
        os.replace(orig_path, dest_path)
        print(f"The file {file} has been successfully moved.")
    except FileNotFoundError:
        print(f"The file {file} does not exist.")
    except Exception as e:
        print(f"An error occurred: {e}")


def sort_ref_tmx_file_by_domain(file_path, current_domains):
    dirty_tmx_domain = get_domain(file_path)
    tmx_domain = dirty_tmx_domain.removeprefix("CGA-").removesuffix("New").removesuffix("-New")

    if os.path.exists(file_path):

        if has_new_version(file_path, tmx_domain):
            if not file_path.endswith(idle_extension):
                new_file_path = file_path + idle_extension
                move_file(file_path, new_file_path)
        elif tmx_domain in current_domains and file_path.endswith(idle_extension):
            # remove penalty
            new_file_path = file_path.removesuffix(idle_extension)
            move_file(file_path, new_file_path)
        elif tmx_domain not in current_domains and not file_path.endswith(idle_extension):
            # add penalty
            new_file_path = file_path + idle_extension
            move_file(file_path, new_file_path)
        elif tmx_domain in disallowed_domains:
            # remove file for good
            delete_file(file_path)


def get_batch_from_filename(file_path):
    file_name = file_path.split("/")[-1] if "/" in file_path else file_path
    basename = file_name.split(".")[0]

    if any(x in basename.split("_") for x in locales):
        # this is a base TM, hence remove language code
        return "_".join(basename.split("_")[0:-1])
    return basename


def sort_batch_tmx_file_by_batch(file_path, batches):
    batch = get_batch_from_filename(file_path)

    if batch in batches and file_path.endswith(idle_extension):
        # remove penalty
        new_file_path = file_path.removesuffix(idle_extension)
        move_file(file_path, new_file_path)
    elif batch not in batches and not file_path.endswith(idle_extension):
        # add penalty
        new_file_path = file_path + idle_extension
        move_file(file_path, new_file_path)


def get_tmx_files(tm_dir, origin_dirs):
    files = [glob(f"{tm_dir}/**/{origin_dir}/*.tmx*", recursive=True) for origin_dir in origin_dirs]
    return list(chain.from_iterable(files))


def get_batch_domains(batches):
    return list(map(get_domain, batches))


def get_mapped_batches(root_dir_path):
    settings_file = os.path.join(root_dir_path, "omegat.project")
    with open(settings_file, "r") as f:
        content = f.read()
    bs_content = BeautifulSoup(content, "xml")

    mappings = bs_content.find_all("mapping", attrs={'local': re.compile(r"^source")})
    return [mapping.attrs['local'].split("/")[1] for mapping in mappings]


if __name__ == "__main__":

    disallowed_domains = ["CRT", "FLQ", "FNL", "WBQ"]
    allowed_domains = {
        "QQS": ("STQ", "STQ-UH", "STQ-UO", "ICQ"),
        "QQA": ("SCQ", "TCQ", "PAQ"),
        "COS": ("MAT", "REA", "SCI")
    }

    trend_tag = "MS2022"
    new_tag   = "FT2025"

    # path to /tm folder in the repo/project
    tm_dir_path = os.path.join(root_dir_path, "tm")

    batches = get_mapped_batches(root_dir_path)
    current_domains = get_batch_domains(batches)
    idle_extension = ".idle"
    locales = [entry["BCP47"] for entry in get_locales()]

    # trend TMs
    for tmx_file in get_tmx_files(tm_dir_path, ["trend", "ref"]):
        sort_ref_tmx_file_by_domain(tmx_file, current_domains)

    # batch TMs from previous/next step + base TMs (which are organized by batch)
    for tmx_file in get_tmx_files(tm_dir_path, ["prev", "next", "base", "x-base"]):
        sort_batch_tmx_file_by_batch(tmx_file, batches)
