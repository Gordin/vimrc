#!/bin/bash
mkdir -p tmp/swap tmp/undo tmp/backup bundle
git clone https://github.com/gmarik/vundle.git bundle/vundle
vim +BundleInstall! +qall
