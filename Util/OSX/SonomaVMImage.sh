if [ "${USER}" != "root" ]; then
	echo "$0 must be run as root!"
	exit 2
fi

echo "Convert Mac OS Sonoma to ISO Image\n"
hdiutil create -o /tmp/Sonoma.cdr -size 5200m -layout SPUD -fs HFS+J
hdiutil attach /tmp/Sonoma.cdr.dmg -noverify -mountpoint /Volumes/install_build
sudo /Applications/Install\ macOS\ High\ Sierra.app/Contents/Resources/createinstallmedia --volume /Volumes/install_build
mv /tmp/Sonoma.cdr.dmg ~/Desktop/InstallSystem.dmg
hdiutil detach /Volumes/Install\ macOS\ High\ Sierra
hdiutil convert ~/Desktop/InstallSystem.dmg -format UDTO -o ~/Desktop/Sonoma.iso
echo "Completed creating Sonoma ISO Image."