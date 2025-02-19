#!/bin/bash

if [ -z "$CC" ]; then
    CC=gcc
fi

if [ $(uname -m) == "aarch64" ]; then
    CC=aarch64-linux-gnu-gcc
fi

if [ -z "$STRIP" ]; then
    STRIP=strip
fi

# note: for windows get MSYS2, install gcc for mingw using pacman and compile using the mingw shell

if [[ "$OSTYPE" == "msys" ]]; then

$CC -std=c99 -Ofast -fwhole-program -flto \
    -I../UP3DCOMMON \
    -o up3dtranscode.exe ../UP3DCOMMON/up3dconf.c hoststepper.c hostplanner.c gcodeparser.c ../UP3DCOMMON/up3ddata.c umcwriter.c up3dtranscode.c -lm

$STRIP up3dtranscode.exe

elif [[ "$OSTYPE" == "darwin"* ]]; then


$CC -std=c99 -Ofast \
    -I../UP3DCOMMON \
    -framework IOKit \
    -framework CoreFoundation \
    -lobjc \
    -o up3dtranscode ../UP3DCOMMON/up3dconf.c hoststepper.c hostplanner.c gcodeparser.c ../UP3DCOMMON/up3ddata.c umcwriter.c up3dtranscode.c -lm

$STRIP up3dtranscode


elif [[ "$OSTYPE" == "linux-gnu"* ]]; then

$CC -std=c99 -Ofast -fwhole-program -flto \
    -I../UP3DCOMMON \
    -o up3dtranscode ../UP3DCOMMON/up3dconf.c hoststepper.c hostplanner.c gcodeparser.c ../UP3DCOMMON/up3ddata.c umcwriter.c up3dtranscode.c -lm

$STRIP up3dtranscode

fi
