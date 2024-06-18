#!/usr/bin/env bash

cd /home/beau/.config/nvim/
/usr/bin/git add .
/usr/bin/git commit -m "automatic push"
/usr/bin/git push

config='/usr/bin/git --git-dir=/home/beau/.cfg/ --work-tree=/home/beau'

$config add -u
$config commit -m "automatic push"
$config push -u origin main
