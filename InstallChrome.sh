if [ "${USER}" != "root" ]; then
	echo "$0 must be run as root!"
	exit 2
fi

#Reference Link : https://superuser.com/questions/602680/how-to-install-google-chrome-from-the-command-line
wget https://dl.google.com/chrome/mac/stable/GGRO/googlechrome.dmg
open ~/Downloads/googlechrome.dmg
sudo cp -r /Volumes/Google\ Chrome/Google\ Chrome.app /Applications/
