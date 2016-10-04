#!/bin/bash
mkdir -p tmp/swap tmp/undo tmp/backup vim.old bundle
for i in ~/.gvim* ~/.vim*; do [ -e $i ] && mv $i ./vim.old/; done
ln -sf $(pwd)/vimrc ~/.vimrc
ln -sf $(pwd)/gvimrc ~/.gvimrc
ln -sf $(pwd) ~/.vim

# Get spellfiles
mkdir -p ~/.vim/spell
cd ~/.vim/spell
wget http://ftp.vim.org/pub/vim/runtime/spell/{de,en}.utf-8.{spl,sug}

# Get plugins
mkdir -p ~/.vim/autoload
curl -fLo ~/.vim/autoload/plug.vim https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
vim +PlugInstall! +PlugInstall!
