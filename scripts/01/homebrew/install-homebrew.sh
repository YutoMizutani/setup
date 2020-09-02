#!/bin/sh

sh $(cd $(dirname ${BASH_SOURCE:-$0}); pwd)/../utils/log/info.sh $0

# See more https://brew.sh/index_ja
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
brew analytics off
brew update && brew upgrade && brew cask upgrade && brew cleanup
brew install bash
echo export HOMEBREW_CASK_OPTS="--appdir=/Applications" >> .bashrc
echo export HOMEBREW_NO_ANALYTICS=1 >> .bashrc
source .bashrc

brew install wget openssl mas
