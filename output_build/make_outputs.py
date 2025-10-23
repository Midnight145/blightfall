#! /usr/bin/env python3
import os
import re
import zipfile
import sys
import tempfile
import json

OUTPUT_VERSION = ""
if len(sys.argv) > 1:
    OUTPUT_VERSION = sys.argv[1]

INCLUDE_IN_BOTH_KEY = "both"
CLIENT_ONLY = "client_only"
SERVER_ONLY = "server_only"
CLIENT_EXCLUDE = "client_exclude"
SERVER_EXCLUDE = "server_exclude"
TO_FORMAT = "to_format"
RENAME_MAP = "rename_map"
TOP_LEVEL_CLIENT_OUTPUT_FILES = "toplevel_client_files"

ROOT_DIR = os.path.dirname(os.getcwd())
OUTPUT_DIR = os.path.join(os.getcwd(), "output")

CLIENT_ZIP = os.path.join(OUTPUT_DIR, f"blightfall-{OUTPUT_VERSION}client.zip")
SERVER_ZIP = os.path.join(OUTPUT_DIR, f"blightfall-{OUTPUT_VERSION}server.zip")

os.makedirs(OUTPUT_DIR, exist_ok=True)

def format_file(path: str, replace: dict[str, str], tmp: str) -> str:
    """
    Formats a file by replacing placeholders with provided values.
    Args:
        path (str): The path to the file to format.
        replace (dict): A dictionary of placeholder-value pairs.
        tmp (str): The directory to save the formatted temporary file.
    Returns:
        str: The path to the formatted temporary file.
    """
    cwd = os.getcwd()
    os.chdir("..")
    with open(path, "r") as opened:
        content = opened.read()
        for key, value in replace.items():
            content = content.replace("{" + key + "}", value)
        temp_path = os.path.join(tmp, path)

    os.makedirs(os.path.dirname(temp_path), exist_ok=True)
    with open(temp_path, "w") as temp_file:
        temp_file.write(content)
    os.chdir(cwd)
    return temp_path

def matches_any(path, patterns):
    return any(re.search(p, path) for p in patterns)


def collect_files(directory: str, config: dict, tmp = "./tmp") -> tuple[set[str], set[str]]:
    def should_include(relative_path: str, filename, patterns: list[str]) -> bool:
        return any(relative_path.startswith(p) for p in patterns) or filename in patterns
    config[CLIENT_ONLY] += config[TOP_LEVEL_CLIENT_OUTPUT_FILES]
    client_files = set()
    server_files = set()

    for base, dirs, files in os.walk(directory):
        rel_dir = os.path.relpath(base, directory)
        if rel_dir.startswith("output"):
            continue

        for file in files:
            rel_path = os.path.join(rel_dir, file).replace(r"\\", "/")

            included_in_both = should_include(rel_path, file, config[INCLUDE_IN_BOTH_KEY])
            client_only = should_include(rel_path, file, config[CLIENT_ONLY])
            server_only = should_include(rel_path, file, config[SERVER_ONLY])

            final_path = rel_path if not file in config[TO_FORMAT] else format_file(rel_path, config[TO_FORMAT][file], tmp)

            if included_in_both:
                if not matches_any(rel_path, config[CLIENT_EXCLUDE]):
                    client_files.add(final_path)
                if not matches_any(rel_path, config[SERVER_EXCLUDE]):
                    server_files.add(final_path)
            elif client_only:
                client_files.add(final_path)
            elif server_only:
                server_files.add(final_path)
    return client_files, server_files


def create_zip(zip_path, files, config, is_client, tmp="./tmp"):
    with zipfile.ZipFile(zip_path, "w", zipfile.ZIP_DEFLATED) as zipf:
        for f in files:
            arcname = f
            arcname = arcname.replace(tmp, "")
            if is_client:
                if os.path.basename(f) not in config[TOP_LEVEL_CLIENT_OUTPUT_FILES]:
                    arcname = "minecraft/" + arcname
            for old, new in config[RENAME_MAP].items():
                if arcname.startswith(old + "/"):
                    arcname = arcname.replace(old + "/", new + "/", 1)
                    break
            zipf.write(os.path.join(ROOT_DIR, f), arcname=arcname)

if __name__ == "__main__":
    with open("config.json") as config_file:
        config = config_file.read()
        # this kinda sucks, but .format() doesn't work with curly braces in json
        # i cant think of a decent dynamic way to do without being incredibly slow and complex
        config = config.replace("{OUTPUT_VERSION}", OUTPUT_VERSION)
        config = json.loads(config)

    with tempfile.TemporaryDirectory() as tmp:
        client, server = collect_files("..", config, tmp=tmp)
        print("starting client file creation")
        create_zip(CLIENT_ZIP, client, config, is_client=True, tmp=tmp)
        print("done with client")
        print("starting server file creation")
        create_zip(SERVER_ZIP, server, config, is_client=False, tmp=tmp)
        print("done with server")

        print(f"Client zip created: {CLIENT_ZIP}")
        print(f"Server zip created: {SERVER_ZIP}")
