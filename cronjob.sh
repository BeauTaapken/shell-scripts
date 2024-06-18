#!/usr/bin/env bash

cd ~/.config/nvim/
git add .
git commit -m "automatic push"
git push

config='/usr/bin/git --git-dir=/home/beau/.cfg/ --work-tree=/home/beau'

$config add -u
$config commit -m "automatic push"
$config push -u origin main
