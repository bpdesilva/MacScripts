echo "##################### NOTE : This script work with Mojave ###############"
xcode-select --install
which -s brew
if [[ $? != 0 ]] ; then
    # Install Homebrew
    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
else
    brew update
    brew install ruby
    export PATH=/usr/local/opt/ruby/bin:$PATH
    which ruby
    # /usr/local/opt/ruby/bin/ruby
    ruby -v
    # ruby 2.6.2p47 (2019-03-13 revision 67232) [x86_64-darwin18]
    sudo gem install bundler
    sudo gem install -n /usr/local/bin/ jekyll
fi


