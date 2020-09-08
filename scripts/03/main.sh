#!/bin/sh

sh $(cd $(dirname ${BASH_SOURCE:-$0}); pwd)/../utils/log/info.sh $0

sh $(cd $(dirname ${BASH_SOURCE:-$0}); pwd)/../utils/log/info.sh "Restore Homebrew formulae"
sh $(cd $(dirname ${BASH_SOURCE:-$0}); pwd)/homebrew/restore-formulae.sh

sh $(cd $(dirname ${BASH_SOURCE:-$0}); pwd)/../utils/log/info.sh "Restore zsh config"
sh $(cd $(dirname ${BASH_SOURCE:-$0}); pwd)/zsh/restore-rc.sh

sh $(cd $(dirname ${BASH_SOURCE:-$0}); pwd)/../utils/log/info.sh "Add a Xcode theme"
sh $(cd $(dirname ${BASH_SOURCE:-$0}); pwd)/xcode/add-color-theme.sh
