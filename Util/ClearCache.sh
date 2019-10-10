#Script written to clean cache 
if [ "${USER}" != "root" ]; then
	echo "$0 must be run as root!"
	exit 2
fi
rm -rf ~/Library/Caches/Google/Chrome/Default/Media\ Cache/
rm -rf ~/Library/Caches/Google/Chrome/Default/
rm -rf ~/Library/Application Support/Google/Chrome/
sudo killall -HUP mDNSResponder