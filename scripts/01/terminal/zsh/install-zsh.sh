#!/bin/zsh

sh $(cd $(dirname ${BASH_SOURCE:-$0}); pwd)/../../../utils/log/info.sh $0

# Export bash settings to zsh
cp .bashrc .zshrc
cp .bash_profile .zprofile

brew install zsh zsh-autosuggestions zsh-completions zsh-syntax-highlighting autojump peco
echo source /usr/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh >> ~/.zshrc
echo source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh >> ~/.zshrc
echo /usr/local/bin/zsh | sudo tee -a /etc/shells
chsh -s /usr/local/bin/zsh

# https://qiita.com/kinchiki/items/57e9391128d07819c321
# Apply prezto
git clone --recursive https://github.com/sorin-ionescu/prezto.git "${ZDOTDIR:-$HOME}/.zprezto"
zsh -c 'setopt EXTENDED_GLOB'
for rcfile in "${ZDOTDIR:-$HOME}/.zprezto/runcoms/^README.md(.N)"; do
  ln -s "$rcfile" "${ZDOTDIR:-$HOME}/.${rcfile:t}"
done

# Install prompt
npm install --global pure-prompt
# Apply Theme pure
sudo sed -i "" -e "s/'sorin'/'pure'/" -e "s/'completion' \\\/'pure'/" ~/.zprezto/runcoms/zpreztorc
# Add some plugins
sudo sed -i "" -e "s/'completion'/'completion' \\\\LF  'syntax-highlighting' \\\\LF  'autosuggestions'/" ~/.zprezto/runcoms/zpreztorc
LF=$'\\\x0A'
sudo sed -i "" 's/LF/'"$LF"'/g' ~/.zprezto/runcoms/zpreztorc
