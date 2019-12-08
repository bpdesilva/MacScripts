
# Uninstall Atom for Mac
echo "Uninstalling Atom for Mac..."

sudo rm -rf "/Applications/DB Browser for SQLite.app"
sudo rm -rf ~/.atom
sudo rm -rf /usr/local/bin/DB Browser for SQLite.app
sudo rm -rf /Applications/DB Browser for SQLite.app
sudo rm -rf "~/Library/Application Support/DB Browser for SQLite"
sudo rm -rf ~/Library/Caches/DB Browser for SQLite

echo "Finished Uninstallation process."
