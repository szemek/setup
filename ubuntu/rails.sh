#!/usr/bin/env bash

echo "Update packages. Ask for your password."
sudo apt-get update -y

echo "Install packages. Give your password when asked."
bash << +END
sudo apt-get install build-essential bison openssl libreadline6 \
  libreadline6-dev curl git git-core zlib1g zlib1g-dev libssl-dev libyaml-dev \
  libsqlite3-0 libsqlite3-dev sqlite3 libxml2-dev libxslt-dev autoconf \
  libc6-dev ncurses-dev automake libtool nodejs libpq-dev imagemagick \
  gawk libgdbm-dev libffi-dev libmagickwand-dev libmagickcore-dev \
  libmysqlclient-dev --fix-missing -y
exit 0
+END

echo "Install RVM (Ruby Version Manager)"
curl -sSL https://get.rvm.io | bash -s stable
source "$HOME/.rvm/scripts/rvm"
echo '[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"' >> ~/.bashrc
source ~/.bashrc

echo "Install Ruby"
rvm install 2.1.3
source "$HOME/.rvm/scripts/rvm"
rvm use 2.1.3 --default

echo "Skip documentation"
echo "gem: --no-ri --no-rdoc" > ~/.gemrc

gem update --system
gem install bundler
gem install rails
