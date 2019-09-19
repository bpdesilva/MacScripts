echo "Stopping Anydesk at Startup..."
if [ "${USER}" != "root" ]; then
	echo "$0 must be run as root!"
	exit 2
fi
sudo plutil -replace RunAtLoad -bool false /Library/LaunchAgents/com.philandro.anydesk.Frontend.plist

