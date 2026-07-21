#!/bin/zsh

SSID=$(networksetup -getairportnetwork en0 | awk -F': ' '{print $2}')

if [[ -z "$SSID" ]]; then
    echo "Not connected to a Wi-Fi network."
    exit 1
fi

PASSWORD=$(security find-generic-password -D "AirPort network password" -a "$SSID" -w 2>/dev/null)

if [[ -n "$PASSWORD" ]]; then
    echo -n "$PASSWORD" | pbcopy
    echo "Password for '$SSID' copied to clipboard."
else
    echo "Could not retrieve password."
fi
