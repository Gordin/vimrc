#!/bin/bash
mkdir -p tmp/swap tmp/undo tmp/backup vim.old bundle
for i in ~/.gvim* ~/.vim*; do [ -e $i ] && mv $i ./vim.old/; done
git clone https://github.com/gmarik/vundle.git bundle/vundle
ln -sf `pwd`/vimrc ~/.vimrc 
ln -sf `pwd`/gvimrc ~/.gvimrc
ln -sf `pwd` ~/.vim
vim +BundleInstall! +qall

# Compile libs for YouCompleteMe
cd ~/.vim/bundle/YouCompleteMe &&
mkdir -p ycm_build &&
cd ycm_build &&
# Enable clang completion
cmake -G "Unix Makefiles" . ~/.vim/bundle/YouCompleteMe/cpp -DUSE_SYSTEM_LIBCLANG=ON &&
make ycm_support_libs

# Install node libs for tern
cd ~/.vim/bundle/tern_for_vim &&
npm install
