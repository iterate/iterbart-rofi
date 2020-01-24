# Keyboard-driven interface to Iterbart

                  @@@@@@@@@@@@@@@&  @@@@@@@@@@@@@@@@       @@@@@@@@@@@
                  @@@@@@@@@@@@@@@&  @@@@@@@@@@@@@@@@       @@@@@@@@@@@
                  @@@@@     @@@@@&  @@@@@             @@@@@     &@@@@@
                  @@@@@     @@@@@&  @@@@@             @@@@@     &@@@@@
                  @@@@@     @@@@@&  @@@@@             @@@@@     &@@@@@
                  @@@@@@@@@@        @@@@@             @@@@@@@@@@@@@@@@
                  @@@@@@@@@@        @@@@@             @@@@@@@@@@@@@@@@
                  @@@@@@@@@@        @@@@@             @@@@@@@@@@@@@@@@


                                         @@@@@@
                                         @@@@@@@
                                       #@@@@@@@@@
                                   .@@@@@@@@@@@@@@@@@
               /@@@@@@@@@@@@@@@@@@@@@@@@@@@@ @@@@@@@@@@@@@@@@@@@@@@@@@@@@
            @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@    &@@@@@@@@@@@@@@@@@@@@@@@@@@@@@*
          @@@@@@@@@@@@@@@@@@@@@@@@@@@@@*         @@@@@@@@@@@@@@@@@@@@@@@@@@@@@#
         @@@@@@@@@@&                                                ,@@@@@@@@@@@
       (@@@@@@&                                                           @@@@@@@
       @@@@@.                                                               @@@@@@
      @@@@@                                                                  ,@@@@@

Like [Iterbart](https://iterbart.app.iterate.no/)? But feel like taking your
hands off the keyboard makes you less of a 1337 haxxor?

Behold, you can now keep your hands on the keyboard.

![](usage-2020-01-19.gif)

## Requirements

iterbart-rofi requires `python3`, `curl` and `rofi`.

On Ubuntu, try `sudo apt install python3 curl rofi`.

Mac is unfortunately not yet supported. See #1.

[choose-homepage]: https://github.com/chipsenkbeil/choose

## Installing

Trust me?

    curl -s https://raw.githubusercontent.com/iterate/iterbart-rofi/master/install.sh | bash

Otherwise:

    mkdir -p ~/.local/bin
    mkdir -p ~/.local/share/iterbart-rofi
    curl -o ~/.local/bin/iterbart https://raw.githubusercontent.com/iterate/iterbart-rofi/master/iterbart_rofi.py
    curl -o ~/.local/share/iterbart-rofi/links.json https://iterbart.app.iterate.no/data/links.json
    chmod +x ~/.local/bin/iterbart

## Updating

Rerun install:

    curl -s https://raw.githubusercontent.com/iterate/iterbart-rofi/master/install.sh | bash

## Uninstalling

    rm ~/.local/bin/iterbart ~/.local/share/iterbart-rofi/links.json
