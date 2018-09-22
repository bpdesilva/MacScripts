echo "Uninstalling OBS From Mac..."
if [ "${USER}" != "root" ]; then
	echo "$0 must be run as root!"
	exit 2
fi
sudo rm -Rf /Applications/OBS.app
sudo rm -Rf ~/Library/Preferences/OBS*
sudo rm -Rf ~/Library/OBS*
sudo rm -Rf ~/Library/Application\ Support/OBS*
sudo rm -Rf ~/Library/Logs/OBS*
sudo rm -Rf ~/Library/Caches/obs-studio*
sudo rm -Rf ~/Library/Preferences/obs-studio*
sudo rm -Rf ~/Library/obs-studio*
sudo rm -Rf ~/Library/Application\ Support/obs-studio*
sudo rm -Rf ~/Library/Logs/obs-studio*
sudo rm -Rf ~/Library/Caches/obs-studio*
echo "Uninstalling SyphonInject From Mac..."
sudo rm -Rf /Applications/SyphonInject.app
sudo rm -Rf ~/Library/Preferences/OBSyphonInjectS*
sudo rm -Rf ~/Library/OSyphonInjectBS*
sudo rm -Rf ~/Library/Application\ Support/SyphonInject*
sudo rm -Rf ~/Library/Logs/SyphonInject*
sudo rm -Rf ~/Library/Caches/SyphonInject*
echo "Uninstallation of OBS & SyphonInject From Mac has been completed"