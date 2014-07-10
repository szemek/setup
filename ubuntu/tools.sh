#!/usr/bin/env bash
set -e

### Tools
bash << +END
sudo apt-get install git git-core gitg curl vim zsh nautilus-open-terminal \
  compizconfig-settings-manager compiz-plugins-default compiz-plugins-main \
  synaptic autojump exuberant-ctags tree htop -y
exit 0
+END

# janus
source "$HOME/.rvm/scripts/rvm"
curl -Lo- https://bit.ly/janus-bootstrap | bash
# oh-my-zsh
curl -L https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh | sh
