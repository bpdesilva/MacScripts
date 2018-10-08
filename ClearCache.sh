#Script written to clean cache 
rm -rf ~/Library/Caches/Google/Chrome/Default/Media\ Cache/
rm -rf ~/Library/Caches/Google/Chrome/Default/
rm -rf ~/Library/Application Support/Google/Chrome/
sudo killall -HUP mDNSResponder