#!/usr/bin/env python3

import os
from pathlib import Path
import sys
import lxml
from bs4 import BeautifulSoup as bs
import re
from glob import glob
from itertools import chain
import fnmatch
import requests
import argparse
from rich import print
from typing import List, Dict, Union, Optional

# unique argument: path to the repo root folder
repo = sys.argv[1:][0]


# ############# BUSINES LOGIC ###########################################
def get_batch_domains(batches):
    # return [get_domain(batch) for batch in batches]
    return list(map(get_domain, batches))


def get_locales():
    url = 'https://capps.capstan.be/langtags_json.php'
    response = requests.get(url)
    return [entry["BCP47"] for entry in response.json()] 


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
    filename = os.path.basename(file_path)

    if trend_tag in filename and tmx_domain in filename:
        new_version_fname = filename.replace(trend_tag, new_tag).removesuffix(idle_extension)
        folders = ["tm/auto", "tm/enforce"]
        if search_file_in_directories(root_dir_path, folders, new_version_fname):
            return True
    return False


def strip_domain(affixes):
    def decorator(func):
        def wrapper(*args, **kwargs):
            # Call the original function
            result = func(*args, **kwargs)
            # Check if the result is a string
            if isinstance(result, str):
                # Remove suffixes
                for suffix in affixes['suffix']:
                    if result.endswith(f'-{suffix}'):
                        result = result[: -len(f'-{suffix}')]
                        break
                    elif result.endswith(suffix):
                        result = result[: -len(suffix)]
                        break
                # Remove prefixes
                for prefix in affixes['prefix']:
                    if result.startswith(f'-{prefix}'):
                        result = result[len(f'-{prefix}'):]
                        break
                    elif result.startswith(prefix):
                        result = result[len(prefix):]
                        break
                return result
            else:
                return result
        return wrapper
    return decorator
    

@strip_domain({'suffix': ['New', 'Trend'], 'prefix': ['CGA']})
def get_domain(file):
    file_name = os.path.basename(file)
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
        if "_QQS_" in file_name or "_QQA_" in file_name:
            return file_name.split("_")[1]
        elif "_QQSP_" in file_name or "_QQAP_" in file_name:
            return file_name.split("_")[1].removesuffix("P")
        else:
            return file_name.split("_")[2].split("-")[0]


def delete_file(file):
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
    except Exception as e:
        print(f"An error occurred: {e}")


def move_file(orig_path, dest_path):
    print(f">>> Move {orig_path.replace(repo, '')} to {dest_path.replace(repo, '')} !!!")
    dir_path, file = os.path.split(dest_path)
    create_dir(dir_path)
    try:
        os.replace(orig_path, dest_path)
        print(f"The file {file} has been successfully moved.")
    except FileNotFoundError:
        print(f"The file {file} does not exist.")
    except Exception as e:
        print(f"An error occurred: {e}")


def get_batch_from_filename(file_path):
    file_name = os.path.basename(file_path)
    file_stem = file_name.split(".")[0]

    if any(x in file_stem.split("_") for x in locales):
        # this is a base TM, hence remove language code
        return "_".join(file_stem.split("_")[0:-1])
    return file_stem


def sort_ref_tmx_file_by_domain(file_path, current_domains):
    tmx_domain = get_domain(file_path)

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


def sort_batch_tmx_file_by_batch(file_path, batches):
    batch = get_batch_from_filename(file_path) #!

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


def get_mapped_batches(root_dir_path):
    settings_file = os.path.join(root_dir_path, "omegat.project")
    with open(settings_file, "r") as f:
        content = f.read()
    bs_content = bs(content, "xml")

    mappings = bs_content.find_all("mapping", attrs={'local': re.compile(r"^source")})
    return [mapping.attrs['local'].split("/")[1] for mapping in mappings]


if __name__ == "__main__":

    disallowed_domains = ["CRT", "FLQ", "FNL", "WBQ"]
    allowed_domains = {
        "QQS": ("STQ", "STQ-UH", "STQ-UO", "ICQ"),
        "QQA": ("SCQ", "TCQ", "PAQ"),
        "COS": ("MAT", "REA", "SCI")
    }

    trend_tag = "MS2022" #!
    new_tag   = "FT2025"

    tm_dir_path = os.path.join(root_dir_path, "tm")

    batches = get_mapped_batches(root_dir_path)
    current_domains = get_batch_domains(batches)
    idle_extension = ".idle"

    locales = get_locales()

    for tmx_file in get_tmx_files(tm_dir_path, ["trend", "ref"]):
        sort_ref_tmx_file_by_domain(tmx_file, current_domains)

    for tmx_file in get_tmx_files(tm_dir_path, ["prev", "next", "base", "x-base"]):
        sort_batch_tmx_file_by_batch(tmx_file, batches)