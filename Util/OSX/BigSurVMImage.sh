if [ "${USER}" != "root" ]; then
	echo "$0 must be run as root!"
	exit 2
fi

echo "Convert Mac OS BigSur to ISO Image\n"
hdiutil create -o /tmp/Bigsur.cdr -size 8g -layout SPUD -fs HFS+J
hdiutil attach /tmp/BigSur.cdr.dmg -noverify -mountpoint /Volumes/install_build
sudo /Applications/Install\ macOS\ Big\ Sur.app/Contents/Resources/createinstallmedia --volume /Volumes/install_build
mv /tmp/BigSur.cdr.dmg ~/Desktop/InstallSystem.dmg
hdiutil detach /Volumes/Install\ macOS\ \BigSur
hdiutil convert ~/Desktop/InstallSystem.dmg -format UDTO -o ~/Desktop/BigSur.iso
echo "Completed creating BigSur.app ISO Image."
