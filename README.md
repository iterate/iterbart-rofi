# Keyboard-driven interface to Iterbart

Why use the mouse, you say?

Don't ask me.

## Requirements

iterbart-rofi requires `curl` and `rofi`.

On Ubuntu, try `sudo apt install curl rofi`.

## Installing

TODO consider making a curl | bash thing

    mkdir -p ~/.local/bin
    mkdir -p ~/.local/share/iterbart-rofi
    wget -O ~/.local/bin/iterbart https://raw.githubusercontent.com/iterate/iterbart-rofi/master/iterbart_rofi.py
    wget -O ~/.local/share/iterbart-rofi/links.json https://iterbart.app.iterate.no/data/links.json
    chmod +x ~/.local/bin/iterbart
