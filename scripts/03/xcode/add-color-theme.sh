#!/bin/sh

sh $(cd $(dirname ${BASH_SOURCE:-$0}); pwd)/../../utils/log/info.sh $0

git clone https://github.com/halcyonmobile/xcode-monokai-revisited.git
cd xcode-monokai-revisited
sh install.sh
cd ..
rm -rf xcode-monokai-revisited
