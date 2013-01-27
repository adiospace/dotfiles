all:

	@echo
	git clone https://github.com/gmarik/vundle.git $(HOME)/.vim/bundle/vundle

	@echo
	ln -fs $(PWD)/bash_profile $(HOME)/.bash_profile
	ln -fs $(PWD)/vimrc $(HOME)/.vimrc
	ln -fs $(PWD)/tmux.conf $(HOME)/.tmux.conf

	@echo
	@echo "\x1b[38;5;39m=>\x1b[0m Launch vim and run :BundleInstall"
	@echo

.PHONY: all
