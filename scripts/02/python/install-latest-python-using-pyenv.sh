#!/bin/sh

sh $(cd $(dirname ${BASH_SOURCE:-$0}); pwd)/../../utils/log/info.sh $0

brew install pyenv pyenv-virtualenv
echo 'export PYENV_ROOT="$HOME/.pyenv"' >> ~/.bash_profile
echo 'export PATH="$PYENV_ROOT/bin:$PATH"' >> ~/.bash_profile
echo 'eval "$(pyenv init -)"' >> ~/.bash_profile
source ~/.bash_profile
python3=$(pyenv install -l | grep -v '[a-zA-Z]' | grep -e '\s3\.?*' | tail -1)
pyenv install $python3
pyenv global $python3
pyenv rehash
