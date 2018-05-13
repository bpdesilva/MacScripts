#Reference Link:  https://gist.github.com/Tehnix/3e4865fe2cbc6a572ed4
#Reference User : Tehnix => Christian Kjær
binaries=(
  pyenv
  rbenv
  npm
  python
  python3
  pypy
  wget
  openssl
  go
)

apps=(
  atom
  dropbox
  google-chrome
  mamp
  spotify
  teamviewer
  vlc
  java-jdk-javadoc
)

export LC_CTYPE=en.US.UTF-8
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
export PATH="/usr/local/bin:/usr/local/sbin:${PATH}"

# Make sure xcode command line tools are installed
xcode-select --install

echo "Installing homebrew..."
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"


# Update homebrew recipes
brew update

echo "Installing common cli utils..."
# Install GNU core utilities (those that come with OS X are outdated)
brew install coreutils
# Install GNU `find`, `locate`, `updatedb`, and `xargs`, g-prefixed
brew install findutils
# Install Bash 4
brew install bash
# Install more recent versions of some OS X tools
brew tap homebrew/dupes
brew install homebrew/dupes/grep

echo "Installing binaries..."
brew install ${binaries[@]}

echo "Cleaning up..."
brew cleanup

# Install apps via homebrew cask (we loop, because some might fail)
echo "Installing apps..."
for app in "${apps[@]}"
do
   brew cask install $app
done

#End of Reference

#Reference Link:  https://gist.github.com/codeinthehole/26b37efa67041e1307db
#Reference User : codeinthehole => David Winterbottom

echo "Installing Python packages..."
PYTHON_PACKAGES=(
    ipython
    virtualenv
    virtualenvwrapper
)
sudo pip install ${PYTHON_PACKAGES[@]}

echo "Installing Ruby gems"
RUBY_GEMS=(
    bundler
    filewatcher
    cocoapods
)
sudo gem install ${RUBY_GEMS[@]}

echo "Installing global npm packages..."
npm install marked -g

echo "Configuring OSX..."

#End of Reference
