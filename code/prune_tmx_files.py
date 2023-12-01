import os
# from pathlib import Path
import sys
import lxml
from bs4 import BeautifulSoup as bs
import re
from glob import glob

# unique argument: path to the repo root folder
repo = sys.argv[1:][0]


def get_batch_domains(batches):
    # return [get_domain(batch) for batch in batches]
    return list(map(get_domain, batches))


def get_domain(file):

    # get file's basename if it's a path (linux specific)
    file_name = file.split("/")[-1] if "/" in file else file
    # print(f"::: Get domain of '{file_name}'")

    if file_name.startswith("PISA_") and (file_name.endswith("tmx") or file_name.endswith("tmx.zip")):
        # for tmx files
        tentative_domain = file_name.split("_")[2]
        # if tentative_domain.endswith("Q"):
        if tentative_domain in domains["QQS"] or tentative_domain in domains["QQA"]:
            # then it's not the domain, but the actual questionnaire
            return next((key for key, value in domains.items() if tentative_domain in value), None)
        return tentative_domain
    else:
        # for batch folders
        if "_QQS_" in file_name or "_QQA_" in file_name:
            return file_name.split("_")[1]
        else:
            return file_name.split("_")[2].split("-")[0]


def delete_unwanted_tmx(file, allowed_domains):

    tmx_domain = get_domain(file)
    print(f"{tmx_domain=}")
    print(f"{allowed_domains=}")
    if tmx_domain not in allowed_domains:
        print(f">>> Delete {file.replace(repo, '')} !!!")
        # file = Path(file) if isinstance(file, str) else file # only needed with unlink()
        try:
            # file.unlink()
            os.remove(file)
            print(f"The file {file} has been successfully deleted.")
        except FileNotFoundError:
            print(f"The file {file} does not exist.")
        except Exception as e:
            print(f"An error occurred: {e}")


def get_tmx_files(tm_dir):
    return glob(f"{tm_dir}/**/PISA*_MS2022.tmx*", recursive=True)


def get_mapped_batches(root_dir_path):
    # alternatively: get mapped batches from database

    settings_file = os.path.join(root_dir_path, "omegat.project")
    with open(settings_file, "r") as f:
        content = f.read()
    bs_content = bs(content, "xml")

    repositories = bs_content.find_all("mapping", attrs={'local': re.compile(r"source")})
    return [repo.attrs['local'].split("/")[1] for repo in repositories]


def prune_tmx_files(tm_dir_path):

    batches = get_mapped_batches(root_dir_path)
    allowed_domains = get_batch_domains(batches)

    tmx_files = get_tmx_files(tm_dir_path)
    for tmx_file in tmx_files:
        delete_unwanted_tmx(tmx_file, allowed_domains)


if __name__ == "__main__":

    print()

    disallowed_domains = ["CRT", "XYZ", "FLQ", "FNL", "WBQ"]
    domains = {
        "QQS": ("STQ", "STQ-UH", "STQ-UO", "ICQ"),
        "QQA": ("SCQ", "TCQ"),
        "COS": ("MAT", "REA", "SCI")
    }

    root_dir_path = repo # path to root level in the repo
    source_dir_path = os.path.join(root_dir_path, "source")
    tm_dir_path = os.path.join(root_dir_path, "tm")

    prune_tmx_files(tm_dir_path)

