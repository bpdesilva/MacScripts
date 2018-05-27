#Reference Link:  https://www.jamf.com/jamf-nation/discussions/22432/removing-adobe-cc-2015-in-preparation-for-cc-2017
#Reference User : Jim Ferr = >endor-moon
echo "Removing Adobe CC From Mac..."
sudo rm -Rf /Applications/Adobe*
sudo rm -Rf /Applications/Adobe/Adobe Photoshop CC 2018
sudo rm-rf  /Applications/Adobe Creative Cloud*
sudo rm -Rf /Applications/Utilities/Adobe*
sudo rm -Rf /Library/Application\ Support/Adobe*
sudo rm -Rf /Library/Application\ Support/Mozilla/Extensions/{ec8030f7-c20a-464f-9b0e-13a3a9e97384}
sudo rm -Rf /Library/Application\ Support/regid.1986-12.com.adobe

sudo rm -Rf /Library/Automator/Save\ as\ Adobe\ PDF.action

sudo rm -Rf /Library/Internet\ Plug-Ins/AdobePDFViewer.plugin
sudo rm -Rf /Library/Internet\ Plug-Ins/AdobePDFViewerNPAPI.plugin

sudo launchctl remove /Library/LaunchAgents/com.adobe.AAM.Updater-1.0.plist
sudo launchctl remove com.adobe.ARMDCHelper*


sudo rm -Rf /Library/LaunchAgents/com.adobe.AAM.Updater-1.0.plist
sudo rm -Rf /Library/LaunchAgents/com.adobe.ARMDCHelper*


sudo launchctl remove /Library/LaunchDaemons/com.adobe.adobeupdatedaemon.plist
sudo launchctl remove /Library/LaunchDaemons/com.adobe.adobeupdatedaemon.plist
sudo launchctl remove /Library/LaunchDaemons/com.adobe.ARMDC.Communicator.plist
sudo launchctl remove /Library/LaunchDaemons/com.adobe.ARMDC.SMJobBlessHelper.plist


sudo rm -Rf /Library/LaunchDaemons/com.adobe.adobeupdatedaemon.plist
sudo rm -Rf /Library/LaunchDaemons/com.adobe.adobeupdatedaemon.plist
sudo rm -Rf /Library/LaunchDaemons/com.adobe.ARMDC.Communicator.plist
sudo rm -Rf /Library/LaunchDaemons/com.adobe.ARMDC.SMJobBlessHelper.plist

sudo rm -Rf /Library/Logs/Adobe*
sudo rm -Rf /Library/Logs/CreativeCloud*

sudo rm -Rf /Library/PDF\ Services

sudo rm -Rf /Library/Preferences/com.adobe*
sudo rm -Rf /Library/Preferences/com.Adobe*

sudo rm -Rf /Library/PriviledgedHelperTools/com.adobe*

sudo rm -Rf /Library/ScriptingAdditions/Adobe*

sudo rm -Rf /private/var/root/Library/Application\ Support/Adobe*
sudo rm -Rf /private/var/root/Library/Logs/Adobe*
sudo rm -Rf /private/var/root/Library/Logs/CreativeCloud*
sudo rm -Rf /private/var/root/Library/Preferences/Adobe*


sudo rm -Rf /usr/local/bin/RemoteUpdateManager


sudo rm -Rf /Users/admin/Library/Application\ Support/Adobe
sudo rm -Rf /Users/admin/Library/Logs/CreativeCloud
sudo rm -Rf /Users/admin/Library/Logs/PDApp.log

sudo rm -Rf /Users/admin/Library/Preferences/Adobe*
sudo rm -Rf /Users/admin/Library/Preferences/com.adobe*
sudo rm -Rf /Users/admin/Library/Preferences/Macromedia*

sudo rm -Rf /Users/Shared/Adobe*
echo "Uninstallation of Adobe CC From Mac has been completed"
