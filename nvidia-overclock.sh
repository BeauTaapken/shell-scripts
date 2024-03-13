source /mnt/crucial-ssd/shell-scripts/.env

wattage=$(nvidia-smi -q -d POWER | grep 'Max Power Limit' | grep ' W' | sed -z 's/Max Power Limit                   : //g; s/ W//g;')

echo $password | sudo -S nvidia-smi -pl $wattage
