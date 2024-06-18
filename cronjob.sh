#!/usr/bin/env bash

~='/home/beau'

config='/usr/bin/git --git-dir=/home/beau/.cfg/ --work-tree=/home/beau'

$config add -u
$config commit -m "automatic push"
$config push -u origin main

cd ~/.config/nvim/
/usr/bin/git add .
/usr/bin/git commit -m "automatic push"
/usr/bin/git push -u origin main
