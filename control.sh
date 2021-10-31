#!/bin/bash
case
        amiibo=$1
        if [ ! -z "$amiibo" ]; then
                echo "Searching for amiibo $amiibo"
                amiibo=$(find ~/*Amii*/* -maxdepth 2 -type f -name "*$amiibo*")
               if [ ! -z "$amiibo" ]; then
                      echo "Found amiibo: $amiibo"
                        sudo python3 ~/joycontrol/run_controller_cli.py PRO_CONTROLLER --nfc "$amiibo"
                else
                        echo "Amiibo not found for: $amiibo"
                fi
else
        echo "Amiibo not provided, running  joycontrol without"
        sudo python3 ~/joycontrol/run_controller_cli.py PRO_CONTROLLER
fi
