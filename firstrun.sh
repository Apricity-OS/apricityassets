#! /bin/bash
if [ -e ~/.firstrun.ran ]
then
	cd /home

else
touch ~/.firstrun.ran
/etc/skel/.config/autostart/firstrun-desktop.sh
sleep 2

fi
