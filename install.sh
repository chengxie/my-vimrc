#!/bin/bash

VIM_PLUG_URL="https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim"
URL_PREFIX="https://raw.githubusercontent.com/chengxie/my-vimrc/master"
cnf_list=(
conf.d/ctrlsf.vim
conf.d/DoxygenToolkit.vim
conf.d/FastFold.vim
conf.d/FlyGrep.vim
conf.d/indentLine.vim
conf.d/LeaderF.vim
conf.d/markdown-preview.vim
conf.d/nerdtree.vim
conf.d/tagbar.vim
conf.d/ultisnips.vim
conf.d/vim-airline.vim
conf.d/vim-fswitch.vim
conf.d/vim-gutentags.vim
conf.d/vim-multiple-cursors.vim
conf.d/vim-protodef.vim
conf.d/vim-quickui.vim
conf.d/vim-signature.vim
conf.d/YouCompleteMe.vim
)

download_cnf() {
	for ((i=0; i<${#cnf_list[@]}; ++i)); do
		local filename=${cnf_list[i]}
		echo ${URL_PREFIX}/${filename}
		curl -#SfLo ${HOME}/.vim/${filename} --create-dirs ${URL_PREFIX}/${filename}
	done
}

echo ${URL_PREFIX}/vimrc
curl -#SfLo ${HOME}/.vimrc --create-dirs ${URL_PREFIX}/vimrc

echo ${URL_PREFIX}/plug_conf.vim
curl -#SfLo ${HOME}/.vim/plug_conf.vim --create-dirs ${URL_PREFIX}/plug_conf.vim

echo ${URL_PREFIX}/README.md
curl -#SfLo ${HOME}/.vim/README.md --create-dirs ${URL_PREFIX}/README.md

echo $VIM_PLUG_URL
curl -#SfLo ${HOME}/.vim/autoload/plug.vim --create-dirs ${VIM_PLUG_URL}

download_cnf

vim -c "PlugInstall" < /dev/tty

