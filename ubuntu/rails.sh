#!/usr/bin/env bash
set -e

echo "Update packages. Ask for your password."
sudo apt-get update -y

echo "Install packages. Give your password when asked."
sudo apt-get install build-essential bison openssl libreadline6 \
  libreadline6-dev curl git git-core zlib1g zlib1g-dev libssl-dev libyaml-dev \
  libsqlite3-0 libsqlite3-dev sqlite3 libxml2-dev libxslt-dev autoconf \
  libc6-dev ncurses-dev automake libtool nodejs libpq-dev imagemagick \
  libmagickwand-dev libmagickcore-dev --fix-missing -y

echo "Install RVM (Ruby Version Manager)"
curl -L get.rvm.io | bash -s stable
echo '[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"' >> ~/.bashrc
source ~/.bashrc

echo "Install Ruby"
rvm install 1.9.3
rvm use 1.9.3 --default

echo "Don't install & generate documentation"
echo "install: --no-rdoc --no-ri\nupdate:  --no-rdoc --no-ri" >> ~/.gemrc

gem install bundler
gem install rails
