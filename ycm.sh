#!/bin/bash
# Compile libs for YouCompleteMe
cd ~/.vim/bundle/YouCompleteMe &&
mkdir -p ycm_build &&
cd ycm_build &&
# Enable clang completion
cmake -G "Unix Makefiles" . ~/.vim/bundle/YouCompleteMe/cpp -DUSE_SYSTEM_LIBCLANG=ON &&
make ycm_support_libs
