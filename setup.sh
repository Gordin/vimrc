#!/bin/bash
mkdir -p tmp/swap tmp/undo tmp/backup vim.old bundle
for i in ~/.gvim* ~/.vim*; do [ -e $i ] && mv $i ./vim.old/$i; done
git clone https://github.com/gmarik/vundle.git bundle/vundle
vim +BundleInstall! +qall
