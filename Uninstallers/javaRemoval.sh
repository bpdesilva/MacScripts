# Uninstall Java From Mac
echo "Uninstalling Java for Mac..."
#sudo rm -rf "/Applications/Java.app"
sudo rm -fr /Library/Java/JavaVirtualMachines/jdk-9.jdk/
sudo rm -fr /Library/Internet\ Plug-Ins/JavaAppletPlugin.plugin
sudo rm -fr /Library/PreferencePanes/JavaControlPanel.prefPane
sudo rm -fr ~/Library/Application\ Support/Java
echo "Finished Uninstallation process."
