echo "Uninstalling Firefox From Mac..."
echo "Warning this script will erase all Firefox Data! Backup before you run it"
sudo rm -rf /Applications/Firefox.app/
sudo rm -rf ~/Library/Preferences/org.mozilla.firefox*
sudo rm -rf ~/Library/Application Support/Firefox
sudo rm -rf ~/Library/Application Support/Mozilla
sudo rm -rf ~/Library/Mozilla
sudo rm -rf ~/Library/Caches/Firefox
echo "Finished Uninstallation process."
