if [ "${USER}" != "root" ]; then
	echo "$0 must be run as root!"
	exit 2
fi
OUTPUT="$(which brew)"
echo "Your Brew is located ${OUTPUT}"
if [ "${OUTPUT}" != "/usr/local/bin/brew"]; then
    echo "Installing brew & Java...."
    /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
    brew cask install java     
    echo "Installed brew & Java ...."
    exit 2
fi