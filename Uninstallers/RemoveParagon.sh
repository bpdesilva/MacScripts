if [ "${USER}" != "root" ]; then
	echo "$0 must be run as root!"
	exit 2
fi

echo "Removing Paragon NTFS ..."
sudo rm -rf "/Library/Application Support/Paragon Software/"
sudo rm /Library/LaunchDaemons/com.paragon-software.installer.plist
sudo rm /Library/LaunchDaemons/com.paragon-software.ntfs.loader.plist
sudo rm /Library/LaunchDaemons/com.paragon-software.ntfsd.plist
sudo rm /Library/LaunchAgents/com.paragon-software.ntfs.notification-agent.plist
sudo rm -rf /Library/Filesystems/ufsd_NTFS.fs/
sudo rm -rf /Library/PrivilegedHelperTools/com.paragon-software.installer
sudo rm -rf /Library/Extensions/ufsd_NTFS.kext/
sudo rm -rf /Library/PreferencePanes/ParagonNTFS.prefPane
echo "All Done!"