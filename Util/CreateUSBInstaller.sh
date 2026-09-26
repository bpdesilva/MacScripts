#!/bin/bash
# Source : https://support.apple.com/en-us/HT201372

if [ "${USER}" != "root" ]; then
    echo "$0 must be run as root!"
    exit 2
fi

TARGET_VOLUME="/Volumes/Untitled"

echo ""
echo "=========================================="
echo " macOS Bootable Installer Creator"
echo "=========================================="
echo ""

# --------------------------------------------------
# Check if Untitled already exists
# --------------------------------------------------

if [ -d "$TARGET_VOLUME" ]; then
    echo "✓ Found target volume: Untitled"
    echo "  Location: $TARGET_VOLUME"
    echo ""
else
    echo "No volume named 'Untitled' was found."
    echo ""
    echo "Checking for external volumes..."
    echo ""

    # Find external volumes using diskutil
    external_volumes=$(diskutil list external physical 2>/dev/null | \
        grep -E 'Apple_HFS|APFS|Microsoft Basic Data|ExFAT|FAT32|Windows_NTFS' | \
        sed -E 's/.*[0-9]+:[[:space:]]+[^[:space:]]+[[:space:]]+(.+)[[:space:]]+[A-F0-9-]{8,}.*$/\1/' )

    # Get mounted volumes under /Volumes excluding Untitled
    mounted_volumes=()

    while IFS= read -r volume; do
        if [ -n "$volume" ] && [ "$volume" != "Untitled" ]; then
            mounted_volumes+=("$volume")
        fi
    done < <(ls -1 /Volumes 2>/dev/null)

    if [ ${#mounted_volumes[@]} -eq 0 ]; then
        echo "ERROR: No external mounted volumes were found."
        echo ""
        echo "Please connect your USB drive and run the script again."
        echo ""
        exit 1
    fi

    echo "The following mounted volume(s) were found:"
    echo ""

    for i in "${!mounted_volumes[@]}"; do
        volume="${mounted_volumes[$i]}"
        echo "  $((i + 1)). $volume"
    done

    echo ""
    echo "The target volume for this script must be named:"
    echo ""
    echo "    Untitled"
    echo ""

    if [ ${#mounted_volumes[@]} -eq 1 ]; then

        detected_volume="${mounted_volumes[0]}"

        echo "Detected external volume:"
        echo "    $detected_volume"
        echo ""
        echo "Please rename '$detected_volume' to 'Untitled'"
        echo "and run this script again."
        echo ""

    else

        echo "Multiple volumes are mounted."
        echo ""
        echo "Please identify your USB drive and rename its"
        echo "volume to 'Untitled' before running this script."
        echo ""

    fi

    echo "Current mounted volumes:"
    echo ""

    ls -lh /Volumes

    echo ""
    exit 1
fi

# --------------------------------------------------
# macOS selection
# --------------------------------------------------

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

            INSTALLER="/Applications/Install macOS Big Sur.app"

            if [ ! -x "$INSTALLER/Contents/Resources/createinstallmedia" ]; then
                echo "ERROR: macOS Big Sur installer was not found."
                exit 1
            fi

            "$INSTALLER/Contents/Resources/createinstallmedia" \
                --volume "$TARGET_VOLUME" \
                --nointeraction
            ;;

        "MacOS Catalina")
            echo "You chose Catalina"

            INSTALLER="/Applications/Install macOS Catalina.app"

            if [ ! -x "$INSTALLER/Contents/Resources/createinstallmedia" ]; then
                echo "ERROR: macOS Catalina installer was not found."
                exit 1
            fi

            "$INSTALLER/Contents/Resources/createinstallmedia" \
                --volume "$TARGET_VOLUME" \
                --nointeraction
            ;;

        "MacOS Mojave")
            echo "You chose Mojave"

            INSTALLER="/Applications/Install macOS Mojave.app"

            if [ ! -x "$INSTALLER/Contents/Resources/createinstallmedia" ]; then
                echo "ERROR: macOS Mojave installer was not found."
                exit 1
            fi

            "$INSTALLER/Contents/Resources/createinstallmedia" \
                --volume "$TARGET_VOLUME" \
                --nointeraction
            ;;

        "MacOS HighSierra")
            echo "You chose HighSierra"

            INSTALLER="/Applications/Install macOS High Sierra.app"

            if [ ! -x "$INSTALLER/Contents/Resources/createinstallmedia" ]; then
                echo "ERROR: macOS High Sierra installer was not found."
                exit 1
            fi

            "$INSTALLER/Contents/Resources/createinstallmedia" \
                --volume "$TARGET_VOLUME" \
                --nointeraction
            ;;

        "MacOS Sierra")
            echo "You chose Sierra"

            INSTALLER="/Applications/Install macOS Sierra.app"

            if [ ! -x "$INSTALLER/Contents/Resources/createinstallmedia" ]; then
                echo "ERROR: macOS Sierra installer was not found."
                exit 1
            fi

            "$INSTALLER/Contents/Resources/createinstallmedia" \
                --volume "$TARGET_VOLUME" \
                --nointeraction
            ;;

        "MacOS Sonoma")
            echo "You chose Sonoma"

            INSTALLER="/Applications/Install macOS Sonoma.app"

            if [ ! -x "$INSTALLER/Contents/Resources/createinstallmedia" ]; then
                echo "ERROR: macOS Sonoma installer was not found."
                exit 1
            fi

            "$INSTALLER/Contents/Resources/createinstallmedia" \
                --volume "$TARGET_VOLUME" \
                --nointeraction
            ;;

        "MacOS Tahoe")
            echo "You chose Tahoe"

            INSTALLER="/Applications/Install macOS Tahoe.app"

            if [ ! -x "$INSTALLER/Contents/Resources/createinstallmedia" ]; then
                echo "ERROR: macOS Tahoe installer was not found."
                exit 1
            fi

            "$INSTALLER/Contents/Resources/createinstallmedia" \
                --volume "$TARGET_VOLUME" \
                --nointeraction
            ;;

        "MacOS GoldenGate")
            echo "You chose GoldenGate"

            INSTALLER="/Applications/Install macOS 27 Golden Gate.app"

            if [ ! -x "$INSTALLER/Contents/Resources/createinstallmedia" ]; then
                echo "ERROR: macOS GoldenGate installer was not found."
                exit 1
            fi

            "$INSTALLER/Contents/Resources/createinstallmedia" \
                --volume "$TARGET_VOLUME"
            ;;

        "Quit")
            echo "Exiting..."
            break
            ;;

        *)
            echo "Invalid option $REPLY"
            ;;
    esac
done
