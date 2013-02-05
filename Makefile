all:

	@ln -fs $(PWD)/bash_profile $(HOME)/.bash_profile
	@echo "Installed $(HOME)/.bash_profile"
	@ln -fs $(PWD)/vimrc $(HOME)/.vimrc
	@echo "Installed $(HOME)/.vimrc"
	@ln -fs $(PWD)/tmux.conf $(HOME)/.tmux.conf
	@echo "Installed $(HOME)/.tmux.conf"
	@ln -fs $(PWD)/gitconfig $(HOME)/.gitconfig
	@echo "Installed $(HOME)/.gitconfig"
	@curl -sSo $(HOME)/.tmux-adio.colors https://raw.github.com/adrianolaru/adio-theme/master/tmux/adio.tmuxcolors 
	@echo "Installed $(HOME)/.adio-tmux.colors"
	@curl -sSo $(HOME)/adio.itermcolors https://raw.github.com/adrianolaru/adio-theme/master/iTerm2/adio.itermcolors 
	@echo "Downloaded $(HOME)/adio.itermcolors"
	@git clone -q https://github.com/gmarik/vundle.git $(HOME)/.vim/bundle/vundle
	@echo "Installed Vundle - Vim plugin manager"
	@mkdir $(HOME)/.vim/colors
	@curl -sSo $(HOME)/.vim/colors/adio.vim https://raw.github.com/adrianolaru/vim-adio/master/colors/adio.vim 
	@vim +BundleInstall! +qall
	@rm -fr $(HOME)/.vim/colors
	@echo "Installed Vim plugins"
	@echo
	@echo "\x1b[38;5;39m==> \x1b[0m Launch iTerm2 and Import the Adio Preset from: $(HOME)/adio.itermcolors"

tmux-colors:

	@curl -sSo https://raw.github.com/adrianolaru/adio-theme/master/tmux/adio.tmuxcolors $(HOME)/.tmux-adio.colors
	@echo "Updated $(HOME)/.tmux-adio.colors"

snippets:

	git clone git@github.com:adrianolaru/snippets.git $(HOME)/.vim/snippets
	@echo

clean:
	rm -f $(HOME)/.bash_profile
	rm -f $(HOME)/.vimrc
	rm -fr $(HOME)/.vim
	rm -f $(HOME)/.tmux.conf
	rm -f $(HOME)/.tmux-adio.colors
	rm -f $(HOME)/.gitconfig

.PHONY: all snippets tmux-colors clean
