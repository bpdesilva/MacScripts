# Uninstall Atom for Mac
echo "Uninstalling Atom for Mac..."

sudo rm -rf "/Applications/Atom.app"
sudo rm -rf ~/.atom
sudo rm -rf /usr/local/bin/atom
sudo rm -rf /usr/local/bin/apm
sudo rm -rf /Applications/Atom.app
sudo rm -rf ~/Library/Preferences/com.github.atom.plist
sudo rm -rf "~/Library/Application Support/com.github.atom.ShipIt"
sudo rm -rf "~/Library/Application Support/Atom"
sudo rm -rf "~/Library/Saved Application State/com.github.atom.savedState"
sudo rm -rf ~/Library/Caches/com.github.atom
sudo rm -rf ~/Library/Caches/Atom

echo "Finished Uninstallation process."
