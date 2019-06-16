echo "Uninstalling Google Earth Pro From Mac..."
if [ "${USER}" != "root" ]; then
	echo "$0 must be run as root!"
	exit 2
fi
sudo rm -Rf /Applications/Google Earth Pro.app
sudo rm -Rf ~/Library/Preferences/Google Earth Pro*
sudo rm -Rf ~/Library/Google Earth Pro*
sudo rm -Rf ~/Library/Application\ Support/Google Earth Pro*
sudo rm -Rf ~/Library/Logs/Google Earth Pro*
sudo rm -Rf ~/Library/Caches/Google Earth Pro*
sudo rm -Rf ~/Library/Preferences/Google Earth Pro*
sudo rm -Rf ~/Library/Google Earth Pro*
sudo rm -Rf ~/Library/Application\ Support/Google Earth Pro*
sudo rm -Rf ~/Library/Logs/Google Earth Pro*
sudo rm -Rf ~/Library/Caches/Google Earth Pro*
sudo rm -Rf /Library/Google Earth Pro*
sudo rm -Rf /Library/Caches/Google Earth Pro*
sudo rm -Rf /Library/Preferences/Google Earth Pro*
sudo rm -Rf /Library/Application Support/Google Earth Pro*
sudo rm -Rf /Library/LaunchAgents/Google Earth Pro*
sudo rm -Rf /Library/LaunchDaemons/Google Earth Pro*
sudo rm -Rf /Library/PreferencePanes/Google Earth Pro*
echo "Uninstallation of Google Earth Pro From Mac has been completed"