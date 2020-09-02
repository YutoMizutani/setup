#!/bin/sh

sh $(cd $(dirname ${BASH_SOURCE:-$0}); pwd)/../../../utils/log/info.sh $0

brew tap sanemat/font
brew install ricty
cp -f /usr/local/opt/ricty/share/fonts/Ricty*.ttf ~/Library/Fonts/
fc-cache -vf
