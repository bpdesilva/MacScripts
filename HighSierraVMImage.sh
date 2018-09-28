if [ "${USER}" != "root" ]; then
	echo "$0 must be run as root!"
	exit 2
fi

echo "Convert Mac OS HighSierra to ISO Image\n"
hdiutil create -o /tmp/HighSierra.cdr -size 5200m -layout SPUD -fs HFS+J
hdiutil attach /tmp/HighSierra.cdr.dmg -noverify -mountpoint /Volumes/install_build
sudo /Applications/Install\ macOS\ High\ Sierra.app/Contents/Resources/createinstallmedia --volume /Volumes/install_build
mv /tmp/HighSierra.cdr.dmg ~/Desktop/InstallSystem.dmg
hdiutil detach /Volumes/Install\ macOS\ High\ Sierra
hdiutil convert ~/Desktop/InstallSystem.dmg -format UDTO -o ~/Desktop/HighSierra.iso
echo "Completed creating HighSierra ISO Image."