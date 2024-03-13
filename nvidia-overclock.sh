#!/usr/bin/env bash

source /mnt/crucial-ssd/shell-scripts/.env

wattage=$(nvidia-smi -q -d POWER | grep 'Max Power Limit' | grep ' W' | sed -z 's/Max Power Limit                   : //g; s/ W//g;')

# Convert string to int, float isn't supported by bash
wattageAsInt=$((${wattage%.*} + 0))

# if wattage is a number
if [[ $wattageAsInt =~ '^[0-9]+$' ]] ; then
    echo $password | sudo -S nvidia-smi -pl $wattage
fi
