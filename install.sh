#!/bin/bash

set -eu

BINFOLDER="${HOME}/.local/bin"

ITERBART_BINARY="${BINFOLDER}/iterbart"

SCRIPT_URL="https://raw.githubusercontent.com/iterate/iterbart-rofi/master/iterbart_rofi.py"

echo "Downloading resources ..."
echo curl -s -o "$ITERBART_BINARY" "$SCRIPT_URL"
curl -s -o "$ITERBART_BINARY" "$SCRIPT_URL"

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
