all:
	# get the latest vundle manager to install all other vim bundles
	git clone https://github.com/gmarik/vundle.git $(HOME)/.vim/bundle/vundle

	ln -fs $(PWD)/vimrc $(HOME)/.vimrc
	ln -fs $(PWD)/tmux.conf $(HOME)/.tmux.conf
	ln -fs $(PWD)/tmuxcolors.conf $(HOME)/.tmuxcolors.conf

	echo 'Launch vim, run :BundleInstall'

.PHONY: all
