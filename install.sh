#!/bin/bash

mkdir -p ~/.local/bin
mkdir -p ~/.local/share/iterbart-rofi
curl -o ~/.local/bin/iterbart https://raw.githubusercontent.com/iterate/iterbart-rofi/master/iterbart_rofi.py
curl -o ~/.local/share/iterbart-rofi/links.json https://iterbart.app.iterate.no/data/links.json
chmod +x ~/.local/bin/iterbart
