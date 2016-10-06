#!/bin/bash

gcc -std=c99 -Os -o parse parse.c
gcc -std=c99 -Os -I../UP3DCOMMON -o up3dconvg ../UP3DCOMMON/up3dconf.c convg.c

if [[ "$OSTYPE" == "msys" ]]; then
strip parse.exe
strip up3dconvg.exe
else
strip parse
strip up3dconvg
fi
