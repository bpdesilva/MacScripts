if [ "${USER}" != "root" ]; then
	echo "$0 must be run as root!"
	exit 2
fi

echo "Resetting Dock Await..."
defaults write com.apple.dock ResetLaunchPad -bool true && killall Dock
echo "Resetted Dock "