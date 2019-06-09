if [ "${USER}" != "root" ]; then
	echo "$0 must be run as root!"
	exit 2
fi
defaults write com.apple.desktopservices DSDontWriteNetworkStores true