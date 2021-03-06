#!/bin/bash
SCRIPTPATH="$( cd -- "$( dirname -- "${BASH_SOURCE[0]:-$0}"; )" &> /dev/null && pwd 2> /dev/null; )";

source "$SCRIPTPATH/stow.sh"

git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

cd ~/Pictures
wget --output-document=wallpaper.jpg https://unsplash.com/photos/DI0M_gafhcE/download\?ixid\=MnwxMjA3fDB8MXxzZWFyY2h8MTB8fGZvcmVzdCUyMGFlcmlhbHxlbnwwfDB8fHwxNjU1MzAyMTI0\&force\=true