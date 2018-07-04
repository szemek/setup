#!/bin/bash

# install brew https://brew.sh/
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# install applications
brew cask install google-chrome
brew cask install firefox
brew cask install iterm2
brew cask install spectacle
brew cask install spotify
brew cask install flux
brew cask install sublime-text
brew cask install karabiner-elements
# brew cask install 1password
# brew cask install docker
brew install wget
brew install aria2
brew install autojump

# install oh-my-zsh https://github.com/robbyrussell/oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# more commands and tools
brew install hub
brew install tree
brew install htop
brew install gpg2
brew install pwgen

# install janus https://github.com/carlhuda/janus
curl -L https://bit.ly/janus-bootstrap | bash

# install RVM http://rvm.io/
gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3 7D2BAF1CF37B13E2069D6956105BD0E739499BDB
curl -sSL https://get.rvm.io | bash -s stable

# symlink
ln -s /usr/local/bin/gpg /usr/local/bin/gpg2
sudo ln -s "/Applications/Sublime Text.app/Contents/SharedSupport/bin/subl" /usr/local/bin/sublime
