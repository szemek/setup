#!/usr/bin/env bash
set -e

# install VirtualBox Guest Additions prerequisites
sudo apt-get install gcc make perl -y

# install basic tools
sudo add-apt-repository ppa:git-core/ppa -y
sudo apt-get update
sudo apt-get install git git-core gitg curl vim zsh autojump tree htop -y

# set zsh as a default shell and install oh-my-zsh
sudo chsh -s $(which zsh)
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# install Janus: Vim distribution
curl -L https://bit.ly/janus-bootstrap | bash
