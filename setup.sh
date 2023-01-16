#!/bin/bash

[ ! -d "~/config/nvim" ] && mkdir ~/.config/nvim
cp ~/configs/init.vim ~/.config/nvim/
# cp ~/configs/.vimrc ~
cp -r ~/configs/.vim ~
cp ~/configs/.zshrc ~
# cp ~/configs/.bash_completion ~
# cp ~/configs/.bash_profile ~
source ~/.zshrc
