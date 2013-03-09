# /bin/sh

# executeOnSight.sh 
# Runs desired $ACTION when $FILE is present in $DIR 
# Shell script created by Markus Ulfberg 2013-03-07

# Variables
# Path where FILE is expected
DIR=/media/usb-shutdown
# Name of file too look for 
FILE=systemHaltNow
# Action/Task/Command to perfrm 
ACTION="/sbin/shutdown -h now"

# Check if FILE exists and is not empty. 
if [ ! -s $DIR/$FILE ]
	then
		# FILE does not exist, do Nothing
		echo "$FILE not present. Carry on!"
	else
		# FILE exists, perform ACTION
		echo "$FILE present, executing $ACTION NOW!"
		$ACTION
fi

exit
