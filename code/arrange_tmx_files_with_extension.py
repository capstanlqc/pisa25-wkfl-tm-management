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
from typing import List, Dict, Union, Optional

# type aliases
Response = requests.models.Response
LanguageTags = List[str]

# ############# PROGRAM DESCRIPTION ###########################################

app_desc = "Arrange TMs by batch or domain on batch transition"

# initialize arg parser with a description
parser = argparse.ArgumentParser(description=app_desc)
parser.add_argument("-V", "--version", help="show program version", action="store_true")
parser.add_argument(
    "-r", "--repo", help="specify path to the repository's root directory")

args = parser.parse_args()

# check for -V or --version
version_text = f"{app_desc} v. 0.2"
if args.version:
    print(version_text)
    sys.exit()

if args.repo:
    root_dir_path: str = args.repo.strip()
else:
    print("Required argument not found. Run this script with `--help` for details.")
    sys.exit()

args = parser.parse_args()

# ############# BUSINES LOGIC ###########################################

def get_locales() -> LanguageTags:
    """
    Fetches language tags from an external source.

    Returns:
        list: A list of BCP-47 locales (strings).
    """
    url: str = 'https://capps.capstan.be/langtags_json.php'
    response: Response = requests.get(url)
    return [entry["BCP47"] for entry in response.json()] 


def search_file_in_directories(dir_path: str, folders: list, filename: str) -> bool:
    """
    Searches for a file in specified directories.

    Args:
        dir_path (str): Path to the directory to search in.
        folders (list): List of folders to make the search more specific within the directory.
        filename (str): Name of the file to search for.

    Returns:
        bool: True if the file is found, False otherwise.
    """
    for folder in folders:
        directory: str = os.path.join(dir_path, folder)
        # Iterate through all files and subdirectories in the given directory
        for root, dirs, files in os.walk(directory):
            # Check if the filename exists in the current directory
            if filename in files or f"{filename}{idle_extension}" in files:
                return True
    return False


def has_new_version(file_path: str, tmx_domain: str) -> bool:
    """
    Checks if there is a new version of a trend TMX file, where:
    - trend = produced in the previous cycle
    - new = produced in the current cycle (based on the trend above)

    Args:
        file_path (str): Path to the file.
        tmx_domain (str): Domain associated with the file.

    Returns:
        bool: True if a new version exists, False otherwise.
    """
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
                    if result.startswith(f'{prefix}-'):
                        result = result[len(f'{prefix}-'):]
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
def get_domain(file: str) -> str:
    """
    Extracts the (dirty) domain from a file name.
    If the domain is dirty, it will be cleaned up by the @strip_domain decorator.

    Args:
        file (str): Name of the file.

    Returns:
        str: Domain extracted from the file name.
    """
    # get file's basename if it's a path (linux specific)
    file_name: str = os.path.basename(file)
    # defines the pattern to match any TMX's extension (which can be zipped or disabled, or not)
    pattern: str = "\.tmx(\.zip)?(\.idle)?$"

    # any files starting with PISA_ contain domain-specific translations
    if file_name.startswith("PISA_") and re.search(pattern, file_name):
        # for tmx files
        tentative_domain: str = file_name.split("_")[2]
        if tentative_domain in allowed_domains["QQS"] or tentative_domain in allowed_domains["QQA"]:
            # then it's not the domain, but the actual questionnaire
            return next(key for key, value in allowed_domains.items() if tentative_domain in value)
        return tentative_domain
    # any other files contain FT2025 batch-specific translations
    else:
        # for batch folders or batch TMs
        if "_QQS_" in file_name or "_QQA_" in file_name: # CBA QQ
            return file_name.split("_")[1]
        elif "_QQSP_" in file_name or "_QQAP_" in file_name: # PBA QQ
            return file_name.split("_")[1].removesuffix("P")
        else:
            return file_name.split("_")[2].split("-")[0] # anything else


def delete_file(file: str) -> None:
    """
    Deletes a file.

    Args:
        file (str): Path to the file.
    """
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


def create_dir(dir_path: str) -> None:
    """
    Creates a directory.

    Args:
        dir_path (str): Path to the directory.
    """
    try:
        Path(dir_path).mkdir(parents=True, exist_ok=True)
        # print(f"The folder {dir_path} and any necessary ancestors in the path have been created.")
    except Exception as e:
        print(f"An error occurred: {e}")


def move_file(orig_path: str, dest_path: str) -> None:
    """
    Renames file, adding or removing the idle extension.

    Args:
        orig_path (str): Original path of the file.
        dest_path (str): Destination path.
    """
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


def sort_ref_tmx_file_by_domain(file_path: str, current_domains: list) -> None:
    """
    Sorts reference TMX files by domain. Reference TMs includes trend and new TMs.

    Args:
        file_path (str): Path to the TMX file.
        current_domains (list): List of current domains.
    """
    # gets the domain of a tmx file, according to different file naming patterns
    tmx_domain = get_domain(file_path)

    if os.path.exists(file_path):

        if has_new_version(file_path, tmx_domain):
            # disable any trend TM if it's enabled and that has a new version from the current cycle
            if not file_path.endswith(idle_extension):
                new_file_path = file_path + idle_extension
                move_file(file_path, new_file_path)
        elif tmx_domain in current_domains and file_path.endswith(idle_extension):
            # enables the TM if it's disabled but matches any of the current domains in the  project
            new_file_path = file_path.removesuffix(idle_extension)
            move_file(file_path, new_file_path)
        elif tmx_domain not in current_domains and not file_path.endswith(idle_extension):
            # disables the TM if it's enabled but does not match any of the current domains in the  project
            new_file_path = file_path + idle_extension
            move_file(file_path, new_file_path)
        elif tmx_domain in disallowed_domains:
            # remove the file for good
            delete_file(file_path)


def get_batch_from_filename(file_path: str) -> str:
    """
    Extracts the batch from a file name.

    Args:
        file_path (str): Path to the file.

    Returns:
        str: Batch extracted from the file name.
    """
    file_name: str = os.path.basename(file_path)
    file_stem: str = file_name.split(".")[0]

    if any(x in file_stem.split("_") for x in locales):
        # this is a base TM, hence remove language code
        return "_".join(file_stem.split("_")[0:-1])
    return file_stem


def sort_batch_tmx_file_by_batch(file_path: str, batches: list) -> None:
    """
    Sorts batch TMX files by batch.

    Input can be:

    - Batch TMs, which may come from the previous or the next step.
    - Base TMs (used for borrowing), which come from an advanced step in another workflow.

    The basename of batch TMs (after removing the extension) is already the batch name.
    The basename of base TMs is a concatenation of the batch name and the locale, so both the
    local and the extension need to be removed.

    Args:
        file_path (str): Path to the TMX file.
        batches (list): List of batches.
    """
    batch: str = get_batch_from_filename(file_path)

    if batch in batches and file_path.endswith(idle_extension):
        # remove penalty
        new_file_path: str = file_path.removesuffix(idle_extension)
        move_file(file_path, new_file_path)
    elif batch not in batches and not file_path.endswith(idle_extension):
        # add penalty
        new_file_path: str = file_path + idle_extension
        move_file(file_path, new_file_path)


def get_tmx_files(tm_dir: str, origin_dirs: list) -> list:
    """
    Gets TMX files from specified directories.

    Args:
        tm_dir (str): Path to the TM directory.
        origin_dirs (list): List of directories to search in.

    Returns:
        list: List of paths to TMX files.
    """
    # finds files inside the TM dir having any of the specified origin folders in the file path
    # 'origin' here means where the TM came from, e.g. previous step, previous cycle, another locale, etc.
    files: list = [glob(f"{tm_dir}/**/{origin_dir}/*.tmx*", recursive=True) for origin_dir in origin_dirs]
    # it flattens the list of files before returning it
    return list(chain.from_iterable(files))


def get_batch_domains(batches: list) -> list:
    """
    Gets domains associated with batches (one domain per batch).

    Args:
        batches (list): List of batches.

    Returns:
        list: List of domains associated with the batches.
    """
    # return [get_domain(batch) for batch in batches]
    return list(map(get_domain, batches))


def get_mapped_batches(root_dir_path: str) -> list:
    """
    Gets mapped batches from repository mappings in the omegat project settings.

    Args:
        root_dir_path (str): Path to the root directory of the project.

    Returns:
        list: List of mapped batches.
    """
    # extracts the whole content of the project settings file
    settings_file: str = os.path.join(root_dir_path, "omegat.project")
    with open(settings_file, "r") as f:
        content: str = f.read()
    bs_content: BeautifulSoup = BeautifulSoup(content, "xml")

    # extracts the mapping elements where the value of the 'local' attribute start with 'source'
    mappings: BeautifulSoup.element_classes = bs_content.find_all("mapping", attrs={'local': re.compile(r"^source")})
    # for every mapping, returns the part of the value after 'source/', i.e. the batch name
    return [mapping.attrs['local'].split("/")[1] for mapping in mappings]


if __name__ == "__main__":

    # domains that should not be used, if accidentally added
    disallowed_domains: list = ["CRT", "FLQ", "FNL", "WBQ"]
    # needed domains
    allowed_domains: dict = {
        "QQS": ("STQ", "STQ-UH", "STQ-UO", "ICQ"),
        "QQA": ("SCQ", "TCQ", "PAQ"),
        "COS": ("MAT", "REA", "SCI")
    }

    # these tags identify whether the TM is from current or previous cycle
    trend_tag: str = "MS2022"
    new_tag: str   = "FT2025"

    # path to /tm folder in the repo/project
    tm_dir_path: str = os.path.join(root_dir_path, "tm")

    # batches that are mapped in the project settings
    batches: list = get_mapped_batches(root_dir_path)
    # domains of the currently mapped batches
    current_domains: list = get_batch_domains(batches)
    # extension we add to TMX files to disable them
    idle_extension: str = ".idle"
    # list of language tags
    locales: LanguageTags = get_locales()

    # trend TMs from previous cycle ('trend') and new TMs from current cycle (called 'ref')
    for tmx_file in get_tmx_files(tm_dir_path, ["trend", "ref"]):
        sort_ref_tmx_file_by_domain(tmx_file, current_domains)

    # batch TMs from previous/next steps + base TMs (also organized by batch) from other locales
    for tmx_file in get_tmx_files(tm_dir_path, ["prev", "next", "base", "x-base"]):
        sort_batch_tmx_file_by_batch(tmx_file, batches)
