#!/usr/bin/env bash
set -e

### Tools
sudo apt-get install git git-core gitg curl vim zsh nautilus-open-terminal \
  compizconfig-settings-manager compiz-plugins-default compiz-plugins-main \
  synaptic autojump -y

# janus
curl -Lo- https://bit.ly/janus-bootstrap | bash
# oh-my-zsh
curl -L https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh | sh
