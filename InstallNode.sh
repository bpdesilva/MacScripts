if [ "${USER}" != "root" ]; then
	echo "$0 must be run as root!"
	exit 2
fi

echo "Installing Homebrew"
sudo /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
echo "Installing Node"
sudo brew install node
echo "Node Installed"
