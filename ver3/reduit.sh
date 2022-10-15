#!/bin/bash

if [[ $EUID -ne 0 ]]; then
   	echo "This script must be run as root" 
   	exit 1
else
################################## Variables ###################################

HomeUser=spire 

################################################################################


################################################################################

	# apt-get update && sudo apt-get upgrade -y

	sudo apt-get install dialog
	cmd=(dialog --separate-output --checklist "Please Select Software you want to install:" 22 76 16)
	options=(1 "pm2-server-monit" off    # any option can be set to default to "on"
	         2 "dUbuntu Server" off
	        3 "otherzzz" off)
		choices=$("${cmd[@]}" "${options[@]}" 2>&1 >/dev/tty)
		clear
		for choice in $choices
		do
		    case $choice in
	        	1)
	            #pm2-server-monit
				apt install npm -y
					npm install pm2 -g
					pm2 install pm2-server-monit
									;;

			2)
			    	##Ubuntu Server | 
				echo "Ubuntu Server "
				
				apt install veracrypt  vim git curl -y
				
				;;
    		3)	
				#
				echo "autreszzzz"
				sudo snap install wps-2019-snap
				;;
						
	    esac
	done
fi
