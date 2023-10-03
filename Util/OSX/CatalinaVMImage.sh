if [ "${USER}" != "root" ]; then
	echo "$0 must be run as root!"
	exit 2
fi

echo "Convert Mac OS Catalina to ISO Image\n"
hdiutil create -o /tmp/Catalina.cdr -size 8g -layout SPUD -fs HFS+J
hdiutil attach /tmp/Catalina.cdr.dmg -noverify -mountpoint /Volumes/install_build
sudo /Applications/Install\ macOS\ Catalina.app/Contents/Resources/createinstallmedia --volume /Volumes/install_build
mv /tmp/Catalina.cdr.dmg ~/Desktop/InstallSystem.dmg
hdiutil detach /Volumes/Install\ macOS\ \Catalina
hdiutil convert ~/Desktop/InstallSystem.dmg -format UDTO -o ~/Desktop/Catalina.iso
echo "Completed creating Catalina ISO Image."
