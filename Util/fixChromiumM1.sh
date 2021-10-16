which -s brew
if [[ $? != 0 ]] ; then
    # Install Homebrew
    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
else
    brew update
    brew install --cask chromium
fi
echo  "export PUPPETEER_SKIP_CHROMIUM_DOWNLOAD=true" > .zshrc
echo "export PUPPETEER_EXECUTABLE_PATH=`which chromium`" > .zshrc