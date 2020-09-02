#!/bin/sh

sh $(cd $(dirname ${BASH_SOURCE:-$0}); pwd)/../../../utils/log/info.sh $0

defaults -currentHost write com.apple.ImageCapture disableHotPlug -bool YES
