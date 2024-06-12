#!/usr/bin/env bash

config='/usr/bin/git --git-dir=/home/beau/.cfg/ --work-tree=/home/beau'

$config add -u
$config commit -m "automatic push"
$config push -u origin main

cd ~/.config/nvim/
git add .
git commit -m "automatic push"
git push -u origin main
