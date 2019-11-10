#!/bin/sh

mkdir -p ${HOME}/.vim/autoload
mkdir -p ${HOME}/.vim/conf.d

wget -O ${HOME}/.vim/conf.d/a.vim \
    https://raw.githubusercontent.com/chengxie/my-vimrc/master/vim/conf.d/a.vim
wget -O ${HOME}/.vim/conf.d/ctrlsf.vim \
	https://raw.githubusercontent.com/chengxie/my-vimrc/master/vim/conf.d/ctrlsf.vim
wget -O ${HOME}/.vim/conf.d/DoxygenToolkit.vim \
	https://raw.githubusercontent.com/chengxie/my-vimrc/master/vim/conf.d/DoxygenToolkit.vim
wget -O ${HOME}/.vim/conf.d/FlyGrep.vim \
	https://raw.githubusercontent.com/chengxie/my-vimrc/master/vim/conf.d/FlyGrep.vim
wget -O ${HOME}/.vim/conf.d/LeaderF.vim \
	https://raw.githubusercontent.com/chengxie/my-vimrc/master/vim/conf.d/LeaderF.vim
wget -O ${HOME}/.vim/conf.d/nerdtree.vim \
	https://raw.githubusercontent.com/chengxie/my-vimrc/master/vim/conf.d/nerdtree.vim
wget -O ${HOME}/.vim/conf.d/tagbar.vim \
	https://raw.githubusercontent.com/chengxie/my-vimrc/master/vim/conf.d/tagbar.vim
wget -O ${HOME}/.vim/conf.d/ultisnips.vim \
	https://raw.githubusercontent.com/chengxie/my-vimrc/master/vim/conf.d/ultisnips.vim
wget -O ${HOME}/.vim/conf.d/vim-airline.vim \
	https://raw.githubusercontent.com/chengxie/my-vimrc/master/vim/conf.d/vim-airline.vim
wget -O ${HOME}/.vim/conf.d/vim-gutentags.vim \
	https://raw.githubusercontent.com/chengxie/my-vimrc/master/vim/conf.d/vim-gutentags.vim
wget -O ${HOME}/.vim/conf.d/vim-instant-markdown.vim \
	https://raw.githubusercontent.com/chengxie/my-vimrc/master/vim/conf.d/vim-instant-markdown.vim
wget -O ${HOME}/.vim/conf.d/vim-protodef.vim \
	https://raw.githubusercontent.com/chengxie/my-vimrc/master/vim/conf.d/vim-protodef.vim
wget -O ${HOME}/.vim/conf.d/vim-signature.vim \
	https://raw.githubusercontent.com/chengxie/my-vimrc/master/vim/conf.d/vim-signature.vim
wget -O ${HOME}/.vim/conf.d/YouCompleteMe.vim \
	https://raw.githubusercontent.com/chengxie/my-vimrc/master/vim/conf.d/YouCompleteMe.vim


wget -O ${HOME}/.vimrc \
    https://raw.githubusercontent.com/chengxie/my-vimrc/master/vimrc

wget -O ${HOME}/.vim/autoload/plug.vim \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

vim -c "PlugInstall" < /dev/tty

case $(uname -s) in
        CYGWIN*)
			rm -f ${HOME}/.vim/plugged/YouCompleteMe/third_party/ycmd/third_party/clang/lib/libclang.dll.a
			;;
esac
