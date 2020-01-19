#!/bin/bash

set -e

BINFOLDER="${HOME}/.local/bin"
DATAFOLDER="${HOME}/.local/share/iterbart-rofi"

ITERBART_BINARY="${BINFOLDER}/iterbart"

SCRIPT_URL="https://raw.githubusercontent.com/iterate/iterbart-rofi/master/iterbart_rofi.py"
JSON_URL="https://iterbart.app.iterate.no/data/links.json"

echo "Creating folders <$BINFOLDER> and <$DATAFOLDER> ..."
echo mkdir -p "$BINFOLDER" "$DATAFOLDER"
mkdir -p "$BINFOLDER" "$DATAFOLDER"

echo "Downloading resources ..."
echo curl -s -o "$ITERBART_BINARY" "$SCRIPT_URL"
curl -s -o "$ITERBART_BINARY" "$SCRIPT_URL"
echo curl -s -o "${DATAFOLDER}/links.json" "$JSON_URL"
curl -s -o "${DATAFOLDER}/links.json" "$JSON_URL"

echo "Making <${ITERBART_BINARY}> executable ..."
chmod +x "$ITERBART_BINARY"

echo ''
echo '             @@@@@@@@@@@@@@@&  @@@@@@@@@@@@@@@@       @@@@@@@@@@@              '
echo '             @@@@@@@@@@@@@@@&  @@@@@@@@@@@@@@@@       @@@@@@@@@@@              '
echo '             @@@@@     @@@@@&  @@@@@             @@@@@     &@@@@@              '
echo '             @@@@@     @@@@@&  @@@@@             @@@@@     &@@@@@              '
echo '             @@@@@     @@@@@&  @@@@@             @@@@@     &@@@@@              '
echo '             @@@@@@@@@@        @@@@@             @@@@@@@@@@@@@@@@              '
echo '             @@@@@@@@@@        @@@@@             @@@@@@@@@@@@@@@@              '
echo '             @@@@@@@@@@        @@@@@             @@@@@@@@@@@@@@@@              '
echo '                                                                               '
echo '                                                                               '
echo '                                    @@@@@@                                     '
echo '                                    @@@@@@@                                    '
echo '                                  #@@@@@@@@@                                   '
echo '                              .@@@@@@@@@@@@@@@@@                               '
echo '          /@@@@@@@@@@@@@@@@@@@@@@@@@@@@ @@@@@@@@@@@@@@@@@@@@@@@@@@@@           '
echo '       @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@    &@@@@@@@@@@@@@@@@@@@@@@@@@@@@@*       '
echo '     @@@@@@@@@@@@@@@@@@@@@@@@@@@@@*         @@@@@@@@@@@@@@@@@@@@@@@@@@@@@#     '
echo '    @@@@@@@@@@&                                                ,@@@@@@@@@@@    '
echo '  (@@@@@@&                                                           @@@@@@@   '
echo '  @@@@@.                                                               @@@@@@  '
echo ' @@@@@                                                                  ,@@@@@ '
echo ''

echo "Iterbart installed."
