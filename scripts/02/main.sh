#!/bin/sh

sh $(cd $(dirname ${BASH_SOURCE:-$0}); pwd)/../utils/log/info.sh $0

sh $(cd $(dirname ${BASH_SOURCE:-$0}); pwd)/../utils/log/info.sh "Install Ruby"
sh $(cd $(dirname ${BASH_SOURCE:-$0}); pwd)/ruby/install-latest-ruby-using-rbenv.sh
sh $(cd $(dirname ${BASH_SOURCE:-$0}); pwd)/../utils/log/info.sh "Install Python"
sh $(cd $(dirname ${BASH_SOURCE:-$0}); pwd)/python/install-latest-python-using-pyenv.sh
sh $(cd $(dirname ${BASH_SOURCE:-$0}); pwd)/../utils/log/info.sh "Install nodebrew"
sh $(cd $(dirname ${BASH_SOURCE:-$0}); pwd)/nodebrew/install-homebrew.sh

sh $(cd $(dirname ${BASH_SOURCE:-$0}); pwd)/../utils/log/info.sh "Configure Git"
sh $(cd $(dirname ${BASH_SOURCE:-$0}); pwd)/git/install-git.sh

sh $(cd $(dirname ${BASH_SOURCE:-$0}); pwd)/../utils/log/info.sh "Configure macOS"
sh $(cd $(dirname ${BASH_SOURCE:-$0}); pwd)/macos/finder/show-hidden-files.sh
sh $(cd $(dirname ${BASH_SOURCE:-$0}); pwd)/macos/finder/disable-finder-sounds.sh
sh $(cd $(dirname ${BASH_SOURCE:-$0}); pwd)/macos/font/install-ricty.sh
sh $(cd $(dirname ${BASH_SOURCE:-$0}); pwd)/macos/photos/disable-launch-app-when-ios-connecting.sh
sh $(cd $(dirname ${BASH_SOURCE:-$0}); pwd)/macos/screencapture/change-save-path.sh
