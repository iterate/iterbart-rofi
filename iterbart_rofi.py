#!/usr/bin/env python3

from pprint import pprint
import json
import os
import subprocess
import sys
import urllib.request

JSON_URL = os.path.expanduser("~/.local/share/iterbart-rofi/links.json")
ITERBART_LINKS_JSON_URL = "https://iterbart.app.iterate.no/data/links.json"

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


def read_json_from_url(url):
    with urllib.request.urlopen(ITERBART_LINKS_JSON_URL) as handle:
        return json.loads(handle.read())


def is_valid_link(link):
    return ITEM_TITLE in link and ITEM_HREF in link


def iterbart_rofi():
    links = filter(
        is_valid_link, read_json_from_url(ITERBART_LINKS_JSON_URL)[ITERBART_LINKS]
    )
    # links = filter(is_valid_link, read_json_file(JSON_URL)[ITERBART_LINKS])

    links_by_title = {}

    for item in links:
        links_by_title[item[ITEM_TITLE]] = item
        pass

    title_lines = '"' + "\n".join(links_by_title.keys()) + '"'

    def bash(cmd):
        return subprocess.check_output(["bash", "-c", cmd])

    try:
        target = (
            subprocess.check_output(
                ["bash", "-c", f"echo {title_lines} | rofi -i -dmenu"]
            )
            .decode("utf-8")
            .strip()
        )
    except subprocess.CalledProcessError:
        # User pressed escape in rofi, or aborted otherwise
        print("No site selected, aborting")
        return 0

    href = links_by_title[target][ITEM_HREF]

    # TODO fallback for mac (if a mac user is interested)
    browser = "xdg-open"
    if "BROWSER" in os.environ:
        browser = os.environ["BROWSER"]

    bash(f"nohup \"{browser}\" '{href}' >/dev/null 2>&1 &")
    return 0


def hot():
    """Entrypoint for hotloaded development

    echo iterbart_rofi.py | hotload iterbart_rofi.py hot
    """
    import urllib.request

    with urllib.request.urlopen(ITERBART_LINKS_JSON_URL) as f:
        links = json.loads(f.read())


def main():
    """Just launch iterbart_rofi, except if hot is provided explicitly"""
    hot_running = "HOTLOAD_RUNNING"
    if hot_running in os.environ and os.environ[hot_running] == hot_running:
        return hot()
    else:
        return iterbart_rofi()


if __name__ == "__main__":
    sys.exit(main())
elif "HOTLOAD_RUNNING" in os.environ:
    hot()
