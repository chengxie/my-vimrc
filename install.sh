#!/bin/bash
SYSTEM=$1
if [ -z $SYSTEM ] || [ $SYSTEM != 'mac' -a $SYSTEM != 'linux' ]; then
	exit 0
fi

VIM_PLUG_URL="https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim"
URL_PREFIX="https://raw.githubusercontent.com/chengxie/my-vimrc/master"
FILE_LIST=(
conf.d/vim-gutentags.vim
conf.d/tagbar.vim
conf.d/vim-airline.vim
conf.d/YouCompleteMe.vim
conf.d/FlyGrep.vim
conf.d/DoxygenToolkit.vim
conf.d/nerdtree.vim
conf.d/vim-instant-markdown.vim
conf.d/vim-protodef.vim
conf.d/a.vim
conf.d/ultisnips.vim
conf.d/vim-signature.vim
conf.d/dict.vim
conf.d/LeaderF.vim
conf.d/ctrlsf.vim
)

download() {
	for ((i=0; i<${#FILE_LIST[@]}; ++i)); do
		local filename=${FILE_LIST[i]}
		echo ${URL_PREFIX}/${filename}
		curl -#SfLo ${HOME}/.vim/${filename} --create-dirs ${URL_PREFIX}/${filename}
	done
	curl -#SfLo ${HOME}/.vim/vimrc --create-dirs ${URL_PREFIX}/vimrc
}

download

echo ${URL_PREFIX}/vimrc.${SYSTEM}
curl -#SfLo ${HOME}/.vimrc --create-dirs ${URL_PREFIX}/vimrc.${SYSTEM}

echo $VIM_PLUG_URL
curl -#SfLo ${HOME}/.vim/autoload/plug.vim --create-dirs ${VIM_PLUG_URL}

vim -c "PlugInstall" < /dev/tty

case $(uname -s) in
        CYGWIN*)
			rm -f ${HOME}/.vim/plugged/YouCompleteMe/third_party/ycmd/third_party/clang/lib/libclang.dll.a
			;;
esac
