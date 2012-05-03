all:
	ln -fs $(PWD)/bash_profile $(HOME)/.bash_profile
	ln -fs $(PWD)/vimrc $(HOME)/.vimrc
	ln -fs $(PWD)/tmux.conf $(HOME)/.tmux.conf

.PHONY: all
