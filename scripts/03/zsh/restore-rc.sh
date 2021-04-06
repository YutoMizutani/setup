#!/bin/sh

sh $(cd $(dirname ${BASH_SOURCE:-$0}); pwd)/../../utils/log/info.sh $0

mv ~/.zshrc ~/.zshrc.bak
curl https://gist.githubusercontent.com/YutoMizutani/5864ffac249cfcd433c7feb26cf6b687/raw/f05dd237d695063bde9b3509c74274a5ff114327/.zshrc > ~/.zshrc
