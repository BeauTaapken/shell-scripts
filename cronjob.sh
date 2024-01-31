#!/usr/bin/env bash

config='/usr/bin/git --git-dir=/home/beau/.cfg/ --work-tree=/home/beau'

sudo -E $config add -u
sudo -E $config commit -m "automatic push"
sudo -E $config push
