#!/bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
SCREEN=/tmp/s.png

xwobf $SCREEN
convert $SCREEN $DIR/lock.png -composite $SCREEN

i3lock -c 000000 -i $SCREEN

rm $SCREEN
