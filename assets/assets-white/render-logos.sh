#! /bin/bash

INKSCAPE="/usr/bin/inkscape"

INDEX="logos.txt"

    ASSETS_DIR="icons"
    SRC_FILE="logos.svg"

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
                  --export-height=64
    fi
    done

cd icons
cp -a archlinux.png arch.png
cp -a gnu-linux.png linux.png
cp -a gnu-linux.png unknown.png
cp -a gnu-linux.png lfs.png
cp -a manjaro.png Manjaro.i686.png
cp -a manjaro.png Manjaro.x86_64.png
cp -a driver.png memtest.png
cp -a arcolinux.png arcolinuxb.png
cp -a arcolinux.png arcolinuxd.png

exit 0
