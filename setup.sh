#!/bin/bash
mkdir -p tmp/swap tmp/undo tmp/backup vim.old bundle
for i in ~/.gvim* ~/.vim*; do [ -e $i ] && mv $i ./vim.old/; done
git clone https://github.com/gmarik/vundle.git bundle/vundle
ln -sf `pwd`/vimrc ~/.vimrc
ln -sf `pwd`/gvimrc ~/.gvimrc
ln -sf `pwd` ~/.vim
vim +BundleInstall! +qall

# Get spellfiles
mkdir -p ~/.vim/spell
cd ~/.vim/spell
wget http://ftp.vim.org/pub/vim/runtime/spell/{de,en}.utf-8.{spl,sug}

cd ~/.vim/
bash ycm.sh

cd ~/.vim/
bash tern.sh
