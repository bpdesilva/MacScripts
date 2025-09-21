#!/bin/bash
echo "###### PostgreSQL Uninstaller for Mac ######"

if [ "${USER}" != "root" ]; then
    echo "$0 must be run as root!"
    exit 2
fi

# Find installed PostgreSQL versions under /Library/PostgreSQL
PG_DIR="/Library/PostgreSQL"
if [ ! -d "$PG_DIR" ]; then
    echo "No PostgreSQL installation found under $PG_DIR"
    exit 1
fi

echo "Scanning for installed PostgreSQL versions..."
VERSIONS=($(ls -1 "$PG_DIR" | grep -E '^[0-9]+(\.[0-9]+)?$'))

if [ ${#VERSIONS[@]} -eq 0 ]; then
    echo "No PostgreSQL versions found."
    exit 1
fi

echo "Found versions: ${VERSIONS[@]}"

for VERSION in "${VERSIONS[@]}"; do
    UNINSTALLER="$PG_DIR/$VERSION/uninstall-postgresql.app/Contents/MacOS/installbuilder.sh"
    if [ -f "$UNINSTALLER" ]; then
        echo "Uninstaller found for PostgreSQL $VERSION"
        while true; do
            read -p "Do you wish to uninstall PostgreSQL $VERSION? (y/n) " yn
            case $yn in
                [Yy]* ) 
                    echo "Uninstalling PostgreSQL $VERSION..."
                    sudo "$UNINSTALLER"
                    break
                    ;;
                [Nn]* ) 
                    echo "Skipping PostgreSQL $VERSION"
                    break
                    ;;
                * ) echo "Please answer yes or no.";;
            esac
        done
    else
        echo "⚠️ No uninstaller found for PostgreSQL $VERSION"
    fi
done

echo "Done!"
