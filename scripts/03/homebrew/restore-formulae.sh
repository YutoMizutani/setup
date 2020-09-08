#!/bin/sh

sh $(cd $(dirname ${BASH_SOURCE:-$0}); pwd)/../../utils/log/info.sh $0

git clone https://github.com/YutoMizutani/.brewfile.git
cd .brewfile
make restore
cd ..
rm -rf .brewfile
