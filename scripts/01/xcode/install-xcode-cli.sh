#!/bin/sh

sh $(cd $(dirname ${BASH_SOURCE:-$0}); pwd)/../../utils/log/info.sh $0

# If fail then install Xcode from AppStore at first
xcode-select --install
