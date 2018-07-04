#!/bin/bash

# install brew https://brew.sh/
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# install applications
brew cask install google-chrome
brew cask install iterm2
brew cask install spectacle
brew cask install spotify
brew cask install flux
brew install wget
brew install aria2

# install oh-my-zsh https://github.com/robbyrussell/oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# more commands and tools
brew install hub
