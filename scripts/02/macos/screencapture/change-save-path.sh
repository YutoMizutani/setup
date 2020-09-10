#!/bin/sh

sh $(cd $(dirname ${BASH_SOURCE:-$0}); pwd)/../../../utils/log/info.sh $0

defaults write com.apple.screencapture name "screenshot"
defaults write com.apple.screencapture include-date -bool false
mkdir -p "~/Pictures/screenshot"
defaults write com.apple.screencapture location "~/Pictures/screenshot"
killall SystemUIServer
