#!/bin/bash

if [ -z "$(grep "control()"  ~/.bash_aliases)" ]; then
	echo "Writing function to your bash_aliases file"
	
	echo "control(){" >> ~/.bash_aliases
	echo "~/controlutil/control.sh \$@" >> ~/.bash_aliases
	echo "}" >> ~/.bash_aliases
	source ~/.bash_aliases
else
	echo "You have already installed the command to run the utility."
	echo "Usage: control -a | -m | -am {Amiibo name}"
	echo "-a: needs Amiibo name as argument"
	echo "-m: Gets machine address from an already paired switch, or if none exists, uses the run_joycontrol_cli.py cmdline arg."
	echo "-am: Performs both operations above, requires amiibo name as arg"

fi


