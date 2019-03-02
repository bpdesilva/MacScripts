if which brew | grep -q 'brew not found'; then
   echo "Please install brew to continue"
   echo "Installing Brew...."
    /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
else
    echo "Updating brew..."
    brew update
fi
brew install cask ngrok