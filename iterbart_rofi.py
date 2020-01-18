#!/usr/bin/env python3

## TODOS

# Download config from the web
# Save config in ~/.local/share/iterbart-rofi
# Refresh / re-download

# For now, just download it manually, perhaps?

import json
from pprint import pprint
import subprocess
import os

# Hard-code for now
JSON_URL = "/home/teodorlu/.local/share/iterbart-rofi/links.json"

# Required props
ITERBART_LINKS = "links"
ITEM_TITLE = "title"
ITEM_HREF = "href"
ITEM_DESCRIPTION = "description"

# Optional props
ITEM_LOGO = "logo"


def read_json_file(path):
    with open(path, "r") as f:
        return json.load(f)

def is_valid_link(link):
    return (
        ITEM_TITLE in link
        and ITEM_HREF in link
    )

links = filter(
    is_valid_link,
    read_json_file(JSON_URL)[ITERBART_LINKS]
)

links_by_title = {}

for item in links:
    links_by_title[item[ITEM_TITLE]] = item
    pass

title_lines = '"' + "\n".join(links_by_title.keys()) + '"'

def bash(cmd):
    return subprocess.check_output(["bash", "-c", cmd])

target = subprocess.check_output(["bash", "-c", f"echo {title_lines} | rofi -dmenu"]).decode("utf-8").strip()

href = links_by_title[target][ITEM_HREF]

browser = "xdg-open"
if "BROWSER" in os.environ:
    browser = os.environ["BROWSER"]

bash(f"nohup \"{browser}\" '{href}' &")
