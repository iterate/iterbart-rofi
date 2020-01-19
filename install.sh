#!/bin/bash

BINFOLDER="~/.local/bin"
DATAFOLDER="~/.local/share/iterbart-rofi"

ITERBART_BINARY="${BINFOLDER}/iterbart"

SCRIPT_URL="https://raw.githubusercontent.com/iterate/iterbart-rofi/master/iterbart_rofi.py"
JSON_URL="https://iterbart.app.iterate.no/data/links.json"

echo "Creating folders `$BINFOLDER` and `$DATAFOLDER` ..."
mkdir -p "$BINFOLDER" "$DATAFOLDER"

echo "Downloading resources ..."
curl -s -o "$ITERBART_BINARY" "$SCRIPT_URL"
curl -s -o "${DATAFOLDER}/links.json" "$JSON_URL"

echo "Making `${ITERBART_BINARY}` executable ..."
chmod +x "$ITERBART_BINARY"

echo "Iterbart installed."
