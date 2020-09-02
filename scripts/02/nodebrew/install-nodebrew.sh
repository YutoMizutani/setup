#!/bin/sh

sh $(cd $(dirname ${BASH_SOURCE:-$0}); pwd)/../../utils/log/info.sh $0

brew install nodebrew
nodebrew setup
echo export PATH=/usr/local/var/nodebrew/current/bin:$PATH >> ~/.bash_profile
echo export PATH=$HOME/.nodebrew/current/bin:$PATH >> ~/.bash_profile
source .bash_profile
nodebrew install-binary stable
nodebrew use stable
npm update -g npm
