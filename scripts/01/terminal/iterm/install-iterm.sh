#!/bin/sh

sh $(cd $(dirname ${BASH_SOURCE:-$0}); pwd)/../../../utils/log/info.sh $0

brew cask install iterm2
