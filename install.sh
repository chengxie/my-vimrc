#!/bin/sh

echo "curl -fLo ~/.vim/autoload/plug.vim --create-dirs \\
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim"
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

echo "curl -fLo ~/.vim/coc-settings.json --create-dirs \\
    https://raw.githubusercontent.com/chengxie/my-vimrc/master/vim/coc-settings.json"
curl -fLo ~/.vim/coc-settings.json \
    https://raw.githubusercontent.com/chengxie/my-vimrc/master/vim/coc-settings.json

echo "curl -fLo ~/.vimrc \\
    https://raw.githubusercontent.com/chengxie/my-vimrc/master/vimrc"
curl -fLo ~/.vimrc \
    https://raw.githubusercontent.com/chengxie/my-vimrc/master/vimrc


vim -c "PlugInstall" < /dev/tty
