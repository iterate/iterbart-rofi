#!/usr/bin/env python3

## TODOS

# Download config from the web
# Save config in ~/.local/share/iterbart-rofi
# Refresh / re-download

# For now, just download it manually, perhaps?

import json
from pprint import pprint

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


links = read_json_file(JSON_URL)[ITERBART_LINKS]

for item in links[:4]:
    print(f'{item[ITEM_HREF]=}')
    print(f'{item[ITEM_TITLE]=}')



print(123)
