echo "Uninstalling XCode From Mac..."
sudo /Developer/Library/uninstall-devtools --mode=all
sudo rm -rf "/Applications/Xcode.app"
sudo rm -rf ~/Library/Developer/
sudo rm -rf ~/Library/Caches/com.apple.dt.Xcode
sudo rm -rf ~/Library/Developer/CommandLineTools
sudo rm -rf ~/Library/Preferences/com.apple.dt.Xcode.plist
sudo rm -rf ~/Library/Application Support/Xcode
sudo rm -rf ~/Library/Developer/CoreSimulator
echo "Finished Uninstallation process."
