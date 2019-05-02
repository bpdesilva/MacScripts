if [ "${USER}" != "root" ]; then
	echo "$0 must be run as root!"
	exit 2
fi

echo "Convert Mac OS Sierra to ISO Image\n"
hdiutil create -o /tmp/Sierra.cdr -size 5200m -layout SPUD -fs HFS+J
hdiutil attach /tmp/Sierra.cdr.dmg -noverify -mountpoint /Volumes/install_build
sudo /Applications/Install\ macOS\ Sierra.app/Contents/Resources/createinstallmedia --volume /Volumes/install_build
mv /tmp/Sierra.cdr.dmg ~/Desktop/InstallSystem.dmg
hdiutil detach /Volumes/Install\ macOS\ Sierra
hdiutil convert ~/Desktop/InstallSystem.dmg -format UDTO -o ~/Desktop/Sierra.iso
echo "Completed creating Sierra ISO Image."