#!/bin/sh

sh $(cd $(dirname ${BASH_SOURCE:-$0}); pwd)/../../../utils/log/info.sh $0

defaults write com.apple.finder AppleShowAllFiles -bool true
killall Finder
