#!/bin/bash

cd ~

[[ -f ~/.profile ]] && . ~/.profile

xrdb -merge ~/.Xresources
setxkbmap de

xautolock -detectsleep -time 5 -locker "i3lock -c 000000 -i ~/dotfiles/lock.png" -notify 30 -notifier "notify-send -t 30000 -- 'locking screen in 30 seconds'" & &> /dev/null

[[ -f ~/.xinitrc.local ]] && . ~/.xinitrc.local

exec awesome

