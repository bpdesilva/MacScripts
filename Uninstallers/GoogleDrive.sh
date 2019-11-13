echo "Uninstalling Google Drive From Mac..."
echo "Note: This Script will restart Computer for uninstalling to effect hence PLEASE SAVE ALL YOUR WORK BEFORE RUNNING this Script"
if [ "${USER}" != "root" ]; then
	echo "$0 must be run as root!"
	exit 2
fi

sudo rm -Rf /Applications/Backup and Sync.app
sudo rm -Rf ~/Library/Application\ Scripts/com.google.GoogleDrive.FinderSyncAPIExtension
sudo rm -Rf ~/Library/Caches/com.google.GoogleDrive
sudo rm -Rf ~/Library/Containers/com.google.GoogleDrive.FinderSyncAPIExtension
sudo rm -Rf ~/Library/Cookies/com.google.GoogleDrive.binarycookies
sudo rm -Rf ~/Library/Group\ Containers/google_drive
sudo rm -Rf ~/Library/Preferences/com.google.GoogleDrive.
sudo shutdown -r now