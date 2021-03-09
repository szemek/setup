#!/usr/bin/env bash

sudo apt-get update -y

# install prerequisites (Ubuntu 20.04)
sudo apt-get install gawk g++ autoconf automake bison libc6-dev libffi-dev \
  libgdbm-dev libncurses5-dev libsqlite3-dev libtool libyaml-dev sqlite3 \
  zlib1g-dev libgmp-dev libreadline-dev libssl-dev \
  libc6=2.31-0ubuntu9 zlib1g=1:1.2.11.dfsg-2ubuntu1 -y

# install RVM
curl -sSL https://get.rvm.io | bash -s stable
source "$HOME/.rvm/scripts/rvm"

# install Ruby
rvm install 3.0
rvm use 3.0 --default

# skip documentation
echo "gem: --no-document" > ~/.gemrc

gem update --system
gem install bundler
