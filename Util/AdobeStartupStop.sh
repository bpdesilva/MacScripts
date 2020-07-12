echo "\n\n Killing all Adobe Apps \n\n"

if [ "${USER}" != "root" ]; then
	echo "$0 must be run as root!"
	exit 2
fi

sudo launchctl unload -w /Library/LaunchDaemons/com.adobe.*.plist

echo "\n\n Completed stopping all Adobe processes ! \n\n"