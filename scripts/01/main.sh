#!/bin/sh

sh $(cd $(dirname ${BASH_SOURCE:-$0}); pwd)/../utils/log/info.sh $0

sh $(cd $(dirname ${BASH_SOURCE:-$0}); pwd)/../utils/log/info.sh "Install Xcode CLI after install Xcode from AppStore"
sh $(cd $(dirname ${BASH_SOURCE:-$0}); pwd)/xcode/install-xcode-cli.sh

sh $(cd $(dirname ${BASH_SOURCE:-$0}); pwd)/../utils/log/info.sh "Install Homebrew"
sh $(cd $(dirname ${BASH_SOURCE:-$0}); pwd)/homebrew/install-homebrew.sh

sh $(cd $(dirname ${BASH_SOURCE:-$0}); pwd)/../utils/log/info.sh "Configure Terminal"
sh $(cd $(dirname ${BASH_SOURCE:-$0}); pwd)/terminal/iterm/install-iterm.sh
sh $(cd $(dirname ${BASH_SOURCE:-$0}); pwd)/terminal/zsh/install-zsh.sh
