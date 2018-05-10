echo "Uninstalling Android Studio From Mac..."
echo "Warning this script will erase all Android Studio Projects! Backup before you run it"
sudo rm -Rf /Applications/Android\ Studio.app
sudo rm -Rf ~/Library/Preferences/AndroidStudio*
sudo rm ~/Library/Preferences/com.google.android.studio.plist
sudo rm -Rf ~/Library/Application\ Support/AndroidStudio*
sudo rm -Rf ~/Library/Logs/AndroidStudio*
sudo rm -Rf ~/Library/Caches/AndroidStudio*
echo "Erasing all Android Studio Projects.."
sudo rm -Rf ~/AndroidStudioProjects
echo "Erasing all Android Studio Cache.."
sudo rm -Rf ~/.gradle
echo "Erasing all Android Studio AVDs.."
sudo rm -Rf ~/.android
echo "Erasing all HAXM & SDK Tools.."
sudo rm -Rf ~/Library/Android*
echo "Uninstallation of Android Studio From Mac has been completed"
