#!/bin/bash
args=()

while getopts 'ma:h' flag; do
  case "$flag" in
    m) 
	    echo "Setting switch machine address";
	    mac=$(bluetoothctl paired-devices | grep Switch | cut -d' ' -f2);
	    if [ -z "$mac" ]; then
		    mac="-r auto"
	    	    args+=($mac)
	    else

	    	    args+=("-r $mac")
	    fi
	    ;;

    a) 
	    amiibo=$2
            echo "Searching for amiibo $amiibo";
            amiibo=$(find ~/*Amii*/* -maxdepth 2 -type f -name "*$amiibo*");
	    if [ -z "$amiibo" ]; then
		    echo "'$amiibo' not found, names are case sensitive";
		    exit 1;
		    
            fi
	    args+=("--nfc \"$amiibo\"")
	    ;;
    h)
	    echo "Usage:
	    		control [-a,-m,-am] <amiiboname>
	    		-a: Takes commandline provided amiibo name, uses it to provide a path to a backup.
			-m: Either finds your switch mac address by way of bash commands, or the joycontrol -r auto option
			-am: Automatically connect via machine address and load amiibo by name.
	    "
    *) 
	    echo "No options provided defaulting to standard app start.";;
  esac
done

shift $(($OPTIND - 1))
eval "sudo python3 ~/joycontrol/run_controller_cli.py PRO_CONTROLLER ${args[@]}"
