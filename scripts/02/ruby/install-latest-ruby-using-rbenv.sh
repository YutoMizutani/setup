#!/bin/sh

sh $(cd $(dirname ${BASH_SOURCE:-$0}); pwd)/../../utils/log/info.sh $0

brew install rbenv ruby-build
RUBY_INSTALL_VERSION=$(rbenv install -l | grep -v - | tail -1)
rbenv install $RUBY_INSTALL_VERSION
rbenv global $RUBY_INSTALL_VERSION
sudo gem install bundler
rbenv rehash
