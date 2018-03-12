# Uninstall Atom for Mac
echo "Uninstalling Atom for Mac..."

sudo rm -rf "/Applications/Atom.app"
rm -rf ~/.atom
rm -rf /usr/local/bin/atom
rm -rf /usr/local/bin/apm
rm -rf /Applications/Atom.app
rm -rf ~/Library/Preferences/com.github.atom.plist
rm -rf "~/Library/Application Support/com.github.atom.ShipIt"
rm -rf "~/Library/Application Support/Atom"
rm -rf "~/Library/Saved Application State/com.github.atom.savedState"
rm -rf ~/Library/Caches/com.github.atom
rm -rf ~/Library/Caches/Atom

echo "Finished Uninstallation process."
