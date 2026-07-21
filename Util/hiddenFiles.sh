#!/bin/zsh

CURRENT=$(defaults read com.apple.finder AppleShowAllFiles 2>/dev/null)

if [[ "$CURRENT" == "1" ]]; then
    defaults write com.apple.finder AppleShowAllFiles -bool false
    echo "Hidden files OFF"
else
    defaults write com.apple.finder AppleShowAllFiles -bool true
    echo "Hidden files ON"
fi

killall Finder
