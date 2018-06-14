#Works with Adobe CC 2015
echo "Removing Adobe CC From Mac..."
#!/bin/sh

## Adobe CC 2015 Uninstaller Cleanup
## Updated 2016.12.21 | T.August

## Unload Adobe CC Launch Daemons
launchctl unload $3/Library/LaunchDaemons/com.adobe.adobeupdatedaemon.plist
launchctl unload $3/Library/LaunchDaemons/com.adobe.agsservice.plist

## Unload Adobe Launch Agents
launchctl unload $3/Library/LaunchAgents/com.adobe.AAM.Updater-1.0.plist
launchctl unload $3/Library/LaunchAgents/com.adobe.AdobeCreativeCloud.plist

## Kill additional processes if not caught by launchd unloads

killall "Creative Cloud"
killall "Adobe Desktop Service"
killall "Core Sync"
killall node

## Remove launch agents and launch daemons

rm -Rf $3/Library/LaunchDaemons/com.adobe.adobeupdatedaemon.plist
rm -Rf $3/Library/LaunchDaemons/com.adobe.agsservice.plist
rm -Rf $3/Library/LaunchAgents/com.adobe.AAM.Updater-1.0.plist
rm -Rf $3/Library/LaunchAgents/com.adobe.AdobeCreativeCloud.plist


## Remove remainder of Adobe CC 2015 directories and files

rm -Rf $3/Applications/Utilities/Adobe\ Application\ Manager
rm -Rf $3/Applications/Utilities/Adobe\ Creative\ Cloud
rm -Rf $3/Applications/Utilities/Adobe\ Installers/*
rm -Rf $3/Applications/Adobe\ Creative\ Cloud
rm -Rf $3/Library/Application\ Support/Adobe/AAMUpdater
rm -Rf $3/Library/Application\ Support/Adobe/AAMUpdaterInventory
rm -Rf $3/Library/Application\ Support/Adobe/Acrobat
rm -Rf $3/Library/Application\ Support/Adobe/ADCRefs
rm -Rf $3/Library/Application\ Support/Adobe/Adobe\ Desktop\ Common
rm -Rf $3/Library/Application\ Support/Adobe/Adobe\ PCD
rm -Rf $3/Library/Application\ Support/Adobe/Adobe\ PDF
rm -Rf $3/Library/Application\ Support/Adobe/AdobeApplicationManager
rm -Rf $3/Library/Application\ Support/Adobe/AdobeGCClient
rm -Rf $3/Library/Application\ Support/Adobe/backup
rm -Rf $3/Library/Application\ Support/Adobe/Bridge\ CC\ Extensions
rm -Rf $3/Library/Application\ Support/Adobe/CameraRaw
rm -Rf $3/Library/Application\ Support/Adobe/caps
rm -Rf $3/Library/Application\ Support/Adobe/CEP
rm -Rf $3/Library/Application\ Support/Adobe/Color
rm -Rf $3/Library/Application\ Support/Adobe/Extension\ Manager\ CC
rm -Rf $3/Library/Application\ Support/Adobe/Installers
rm -Rf $3/Library/Application\ Support/Adobe/MACPDFM
rm -Rf $3/Library/Application\ Support/Adobe/OOBE
rm -Rf $3/Library/Application\ Support/Adobe/PCF
rm -Rf $3/Library/Application\ Support/Adobe/SLCache
rm -Rf $3/Library/Application\ Support/Adobe/SLStore
rm -Rf $3/Library/Application\ Support/Adobe/SLStore_v1
rm -Rf $3/Library/Application\ Support/Adobe/Vulcan
rm -Rf $3/Library/Application\ Support/regid.1986-12.com.adobe
rm -Rf $3/Library/Logs/Adobe/Installers
rm -Rf $3/Library/Logs/CreativeCloud
rm -Rf $3/usr/local/bin/RemoteUpdateManager

## Remove package receipts

rm -Rf $3/private/var/db/receipts/com.adobe.acrobat.AcrobatDCUpd*
rm -Rf $3/private/var/db/receipts/com.adobe.Enterprise.install.*
rm -Rf $3/private/var/db/receipts/com.adobe.PDApp.AdobeApplicationManager.installer*

exit 0

echo "Uninstallation of Adobe CC From Mac has been completed"
