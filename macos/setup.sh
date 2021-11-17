#!/bin/bash

# install brew https://brew.sh/
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# browsers
brew install google-chrome
brew install firefox

# editors, IDEs
brew install sublime-text
brew install visual-studio-code
brew install pycharm-ce


brew install iterm2
brew install rectangle
brew install spotify
brew install flux

brew install karabiner-elements
# brew install docker
brew install wget
brew install aria2
brew install autojump
brew install fzf
brew install watch

# install oh-my-zsh https://github.com/ohmyzsh/ohmyzsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# more commands and tools
brew install hub
brew install tree
brew install htop
brew install gpg2
brew install rowanj-gitx
brew install sequel-pro

brew install pwgen
brew install bitwarden

brew install pyenv
brew install jenv
brew install tfenv

# install janus https://github.com/carlhuda/janus
curl -L https://bit.ly/janus-bootstrap | bash

# install RVM http://rvm.io/
gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3 7D2BAF1CF37B13E2069D6956105BD0E739499BDB
curl -sSL https://get.rvm.io | bash -s stable

# symlink
ln -s /usr/local/bin/gpg /usr/local/bin/gpg2
sudo ln -s "/Applications/Sublime Text.app/Contents/SharedSupport/bin/subl" /usr/local/bin/sublime
