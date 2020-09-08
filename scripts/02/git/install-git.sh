#!/bin/sh

sh $(cd $(dirname ${BASH_SOURCE:-$0}); pwd)/../../utils/log/info.sh $0

brew install git
git config --global core.editor 'vim -c "set fenc=utf-8"'
