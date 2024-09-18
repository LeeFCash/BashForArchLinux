#!/bin/bash
echo "password" | sudo -S bash ~/BashScripts/startIWD.sh
echo "password" | sudo -S bash ~/BashScripts/bluetoothconnect.sh
echo "password" | sudo -S bash ~/BashScripts/checkAction.sh
exit
