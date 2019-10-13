#!/bin/bash
# Source : https://support.apple.com/en-us/HT201372

if [ "${USER}" != "root" ]; then
	echo "$0 must be run as root!"
	exit 2
fi

PS3='Please enter your choice: '
MacOS=("MacOS Catalina" "MacOS Mojave" "MacOS HighSierra" "MacOS Sierra" "Quit")
select macos in "${MacOS[@]}"
do
    case $macos in
        "MacOS Catalina")
            echo "you chose choice Catalina"
            sudo /Applications/Install\ macOS\ Catalina.app/Contents/Resources/createinstallmedia --volume /Volumes/Untitled --nointeraction
            ;;
        "MacOS Mojave")
            echo "you chose choice Mojave"
            sudo /Applications/Install\ macOS\ Mojave.app/Contents/Resources/createinstallmedia --volume /Volumes/Untitled --nointeraction
            ;;
        "MacOS HighSierra")
            echo "you chose choice HighSierra"
            sudo /Applications/Install\ macOS\ HighSierra.app/Contents/Resources/createinstallmedia --volume /Volumes/Untitled --nointeraction
            ;;
        "MacOS Sierra")
            echo "you chose choice Sierra"
            sudo /Applications/Install\ macOS\ Sierra.app/Contents/Resources/createinstallmedia --volume /Volumes/Untitled --nointeraction
            ;;
        "Quit")
            break
            ;;
        *) echo "invalid option $REPLY";;
    esac
done
