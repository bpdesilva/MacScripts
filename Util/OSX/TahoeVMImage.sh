if [ "${USER}" != "root" ]; then
	echo "$0 must be run as root!"
	exit 2
fi

echo "Convert Mac OS Tahoe to ISO Image\n"
hdiutil create -o /tmp/Tahoe.cdr -size 8g -layout SPUD -fs HFS+J
hdiutil attach /tmp/Tahoe.cdr.dmg -noverify -mountpoint /Volumes/install_build
sudo /Applications/Install\ macOS\ Big\ Sur.app/Contents/Resources/createinstallmedia --volume /Volumes/install_build
mv /tmp/Tahoe.cdr.dmg ~/Desktop/InstallSystem.dmg
hdiutil detach /Volumes/Install\ macOS\ \Tahoe
hdiutil convert ~/Desktop/InstallSystem.dmg -format UDTO -o ~/Desktop/Tahoe.iso
echo "Completed creating Tahoe.app ISO Image."