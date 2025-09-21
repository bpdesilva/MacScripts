#!/bin/bash
echo "###### Java Uninstaller for Mac ######"

if [ "${USER}" != "root" ]; then
    echo "$0 must be run as root!"
    exit 2
fi

JDK_DIR="/Library/Java/JavaVirtualMachines"

if [ ! -d "$JDK_DIR" ]; then
    echo "No Java installations found in $JDK_DIR"
else
    echo "Scanning for installed JDKs..."
    JDKS=($(ls -1 "$JDK_DIR" | grep -E '^jdk-'))

    if [ ${#JDKS[@]} -eq 0 ]; then
        echo "No JDK versions found in $JDK_DIR"
    else
        echo "Found JDK versions: ${JDKS[@]}"
        for JDK in "${JDKS[@]}"; do
            while true; do
                read -p "Do you want to uninstall $JDK? (y/n) " yn
                case $yn in
                    [Yy]* ) 
                        echo "Uninstalling $JDK..."
                        sudo rm -rf "$JDK_DIR/$JDK"
                        break
                        ;;
                    [Nn]* ) 
                        echo "Skipping $JDK"
                        break
                        ;;
                    * ) echo "Please answer yes or no.";;
                esac
            done
        done
    fi
fi

# Common cleanup regardless of version
echo "Removing Java plugins and settings..."
sudo rm -rf "/Applications/Java.app"
sudo rm -rf /Library/Internet\ Plug-Ins/JavaAppletPlugin.plugin
sudo rm -rf /Library/PreferencePanes/JavaControlPanel.prefPane
sudo rm -rf ~/Library/Application\ Support/Java

echo "###### Finished Uninstallation process. ######"
