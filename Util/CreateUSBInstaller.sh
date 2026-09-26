#!/bin/bash
# Source : https://support.apple.com/en-us/HT201372

if [ "${USER}" != "root" ]; then
    echo "$0 must be run as root!"
    exit 2
fi

# Check if the target USB volume is named "Untitled"
if [ ! -d "/Volumes/Untitled" ]; then
    echo ""
    echo "ERROR: The USB device/volume 'Untitled' was not found."
    echo ""
    echo "Please rename the USB device to 'Untitled' and run this script again."
    echo ""
    echo "Available mounted volumes:"
    ls -1 /Volumes
    echo ""
    exit 1
fi

echo "Found USB volume: /Volumes/Untitled"
echo ""

PS3='Please enter your choice: '

MacOS=(
    "MacOS BigSur"
    "MacOS Catalina"
    "MacOS Mojave"
    "MacOS HighSierra"
    "MacOS Sierra"
    "MacOS Sonoma"
    "MacOS Tahoe"
    "MacOS GoldenGate"
    "Quit"
)

select macos in "${MacOS[@]}"
do
    case $macos in

        "MacOS BigSur")
            echo "You chose BigSur"
            /Applications/Install\ macOS\ Big\ Sur.app/Contents/Resources/createinstallmedia \
                --volume /Volumes/Untitled \
                --nointeraction
            ;;

        "MacOS Catalina")
            echo "You chose Catalina"
            /Applications/Install\ macOS\ Catalina.app/Contents/Resources/createinstallmedia \
                --volume /Volumes/Untitled \
                --nointeraction
            ;;

        "MacOS Mojave")
            echo "You chose Mojave"
            /Applications/Install\ macOS\ Mojave.app/Contents/Resources/createinstallmedia \
                --volume /Volumes/Untitled \
                --nointeraction
            ;;

        "MacOS HighSierra")
            echo "You chose HighSierra"
            /Applications/Install\ macOS\ HighSierra.app/Contents/Resources/createinstallmedia \
                --volume /Volumes/Untitled \
                --nointeraction
            ;;

        "MacOS Sierra")
            echo "You chose Sierra"
            /Applications/Install\ macOS\ Sierra.app/Contents/Resources/createinstallmedia \
                --volume /Volumes/Untitled \
                --nointeraction
            ;;

        "MacOS Sonoma")
            echo "You chose Sonoma"
            /Applications/Install\ macOS\ Sonoma.app/Contents/Resources/createinstallmedia \
                --volume /Volumes/Untitled \
                --nointeraction
            ;;

        "MacOS Tahoe")
            echo "You chose Tahoe"
            /Applications/Install\ macOS\ Tahoe.app/Contents/Resources/createinstallmedia \
                --volume /Volumes/Untitled \
                --nointeraction
            ;;

        "MacOS GoldenGate")
            echo "You chose GoldenGate"
            /Applications/Install\ macOS\ 27\ Golden\ Gate.app/Contents/Resources/createinstallmedia \
                --volume /Volumes/Untitled
            ;;

        "Quit")
            break
            ;;

        *)
            echo "Invalid option $REPLY"
            ;;
    esac
done
