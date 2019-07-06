#! /bin/bash

INKSCAPE="/usr/bin/inkscape"

INDEX="select.txt"

    ASSETS_DIR="select"
    SRC_FILE="select.svg"

    install -d $ASSETS_DIR

    for i in `cat $INDEX`
    do
    if [ -f $ASSETS_DIR/$i.png ]; then
        echo $ASSETS_DIR/$i.png exists.
    else
        echo
        echo Rendering $ASSETS_DIR/$i.png
        $INKSCAPE --export-id=$i \
                  --export-id-only \
                  --export-png=$ASSETS_DIR/$i.png $SRC_FILE >/dev/null \
                  --export-height=72
    fi
    done
exit 0
