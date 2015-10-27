#!/bin/bash

cd ~

[[ -f ~/.profile ]] && . ~/.profile

xrdb -merge ~/.Xresources
setxkbmap de

[[ -f ~/.xinitrc.local ]] && . ~/.xinitrc.local

exec awesome

