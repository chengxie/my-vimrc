#!/bin/sh

curl -fLo ${HOME}/.vim/conf.d/a.vim --create-dirs \
	https://raw.githubusercontent.com/chengxie/my-vimrc/master/conf.d/a.vim
curl -fLo ${HOME}/.vim/conf.d/ctrlsf.vim --create-dirs \
	https://raw.githubusercontent.com/chengxie/my-vimrc/master/conf.d/ctrlsf.vim
curl -fLo ${HOME}/.vim/conf.d/DoxygenToolkit.vim --create-dirs \
	https://raw.githubusercontent.com/chengxie/my-vimrc/master/conf.d/DoxygenToolkit.vim
curl -fLo ${HOME}/.vim/conf.d/FlyGrep.vim --create-dirs \
	https://raw.githubusercontent.com/chengxie/my-vimrc/master/conf.d/FlyGrep.vim
curl -fLo ${HOME}/.vim/conf.d/LeaderF.vim --create-dirs \
	https://raw.githubusercontent.com/chengxie/my-vimrc/master/conf.d/LeaderF.vim
curl -fLo ${HOME}/.vim/conf.d/nerdtree.vim --create-dirs \
	https://raw.githubusercontent.com/chengxie/my-vimrc/master/conf.d/nerdtree.vim
curl -fLo ${HOME}/.vim/conf.d/tagbar.vim --create-dirs \
	https://raw.githubusercontent.com/chengxie/my-vimrc/master/conf.d/tagbar.vim
curl -fLo ${HOME}/.vim/conf.d/ultisnips.vim --create-dirs \
	https://raw.githubusercontent.com/chengxie/my-vimrc/master/conf.d/ultisnips.vim
curl -fLo ${HOME}/.vim/conf.d/vim-airline.vim --create-dirs \
	https://raw.githubusercontent.com/chengxie/my-vimrc/master/conf.d/vim-airline.vim
curl -fLo ${HOME}/.vim/conf.d/vim-gutentags.vim --create-dirs \
	https://raw.githubusercontent.com/chengxie/my-vimrc/master/conf.d/vim-gutentags.vim
curl -fLo ${HOME}/.vim/conf.d/vim-instant-markdown.vim --create-dirs \
	https://raw.githubusercontent.com/chengxie/my-vimrc/master/conf.d/vim-instant-markdown.vim
curl -fLo ${HOME}/.vim/conf.d/vim-protodef.vim --create-dirs \
	https://raw.githubusercontent.com/chengxie/my-vimrc/master/conf.d/vim-protodef.vim
curl -fLo ${HOME}/.vim/conf.d/vim-signature.vim --create-dirs \
	https://raw.githubusercontent.com/chengxie/my-vimrc/master/conf.d/vim-signature.vim
curl -fLo ${HOME}/.vim/conf.d/YouCompleteMe.vim --create-dirs \
	https://raw.githubusercontent.com/chengxie/my-vimrc/master/conf.d/YouCompleteMe.vim

curl -fLo ${HOME}/.vimrc --create-dirs \
    https://raw.githubusercontent.com/chengxie/my-vimrc/master/vimrc

curl -fLo ${HOME}/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

vim -c "PlugInstall" < /dev/tty

case $(uname -s) in
        CYGWIN*)
			rm -f ${HOME}/.vim/plugged/YouCompleteMe/third_party/ycmd/third_party/clang/lib/libclang.dll.a
			;;
esac
