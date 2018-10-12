if [ "${USER}" != "root" ]; then
	echo "$0 must be run as root!"
	exit 2
fi
OUTPUT="$(which brew)"
echo "Your Brew is located ${OUTPUT}"
if [ "${OUTPUT}" != "/usr/local/bin/brew"]; then
    echo "Installing brew & VS Code...."
    /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
    brew cask install visual-studio-code
    echo "Installed brew & VS Code ...."
    exit 2
fi
echo "Adding VS to Path..."
#Source : https://code.visualstudio.com/docs/setup/mac
cat << EOF >> ~/.bash_profile
# Add Visual Studio Code (code)
export PATH="\$PATH:/Applications/Visual Studio Code.app/Contents/Resources/app/bin"
EOF
echo "Added VS Code to Path"
echo "Script completed"
echo "To open VS Code Type code on the terminal...."
