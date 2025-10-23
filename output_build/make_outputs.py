import glob
import os
import re
import shutil
import zipfile
import sys

OUTPUT_VERSION = ""
if len(sys.argv) > 1:
    OUTPUT_VERSION = sys.argv[1]

INCLUDE_IN_BOTH_KEY = "both"
CLIENT_ONLY = "client_only"
SERVER_ONLY = "server_only"
CLIENT_EXCLUDE = "client_exclude"
SERVER_EXCLUDE = "server_exclude"

TOP_LEVEL_CLIENT_OUTPUT_FILES = [
    "technic_blightfall.png",
    "instance.cfg",
    "mmc-pack.json",
    "technic_blightfall",
]


files_filter = {
    INCLUDE_IN_BOTH_KEY : [
        "config",
        "customnpcs",
        "mods",
        "resourcepacks",
        "schematics",
        "scripts",
        "flans"
    ],
    # these are for files to remove from "INCLUDE_IN_BOTH_KEY"
    CLIENT_EXCLUDE : [],
    SERVER_EXCLUDE : [
        r"mods/.+client.*?\.jar"
    ],

    CLIENT_ONLY : [
        "options.txt",
    ] + TOP_LEVEL_CLIENT_OUTPUT_FILES,
    SERVER_ONLY : [
        "libraries",
        "Blightfall.jar",
        "log4j2_server.xml",
        "minecraft_server.1.7.10.jar",
        "PerfectSpawn.json",
        "server.properties",
        "start.bat",
        "start.sh",
    ]
}

RENAME_MAP = {
    "flans" : "world"
}


ROOT_DIR = os.path.dirname(os.getcwd())
OUTPUT_DIR = os.path.join(os.getcwd(), "output")

CLIENT_ZIP = os.path.join(OUTPUT_DIR, f"blightfall-{OUTPUT_VERSION}client.zip")
SERVER_ZIP = os.path.join(OUTPUT_DIR, f"blightfall-{OUTPUT_VERSION}server.zip")

os.makedirs(OUTPUT_DIR, exist_ok=True)

client_files = set()
server_files = set()

def matches_any(path, patterns):
    return any(re.search(p, path) for p in patterns)

# Collect files to include
for base, dirs, files in os.walk(ROOT_DIR):
    rel_dir = os.path.relpath(base, ROOT_DIR)
    if rel_dir.startswith("output"):
        continue
    
    for f in files:
        rel_path = os.path.join(rel_dir, f).replace("\\", "/")
        # print(rel_path)

        included_in_both = any(rel_path.startswith(p) for p in files_filter[INCLUDE_IN_BOTH_KEY])
        client_only = any(rel_path.startswith(p) for p in files_filter[CLIENT_ONLY]) or\
                        f in files_filter[CLIENT_ONLY]
        server_only = any(rel_path.startswith(p) for p in files_filter[SERVER_ONLY]) or\
                        f in files_filter[SERVER_ONLY]

        if included_in_both:
            if not matches_any(rel_path, files_filter[CLIENT_EXCLUDE]):
                client_files.add(rel_path)
            if not matches_any(rel_path, files_filter[SERVER_EXCLUDE]):
                server_files.add(rel_path)
        elif client_only:
            client_files.add(rel_path)
        elif server_only:
            server_files.add(rel_path)


def create_zip(zip_path, files, is_client):
    with zipfile.ZipFile(zip_path, "w", zipfile.ZIP_DEFLATED) as zipf:
        for f in files:
            arcname = f
            if is_client:
                if os.path.basename(f) not in TOP_LEVEL_CLIENT_OUTPUT_FILES:
                    arcname = "minecraft/" + arcname
            for old, new in RENAME_MAP.items():
                if arcname.startswith(old + "/"):
                    arcname = arcname.replace(old + "/", new + "/", 1)
                    break
            zipf.write(os.path.join(ROOT_DIR, f), arcname=arcname)

print("starting client file creation")
create_zip(CLIENT_ZIP, client_files, is_client=True)
print("done with client")
print("starting server file creation")
create_zip(SERVER_ZIP, server_files, is_client=False)
print("done with server")

print(f"Client zip created: {CLIENT_ZIP}")
print(f"Server zip created: {SERVER_ZIP}")

