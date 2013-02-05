BASH_PROFILE=$(HOME)/.bash_profile
VIMRC=$(HOME)/.vimrc
TMUX=$(HOME)/.tmux.conf
TMUX_COLORS=$(HOME)/.tmux-adio.colors
GITCONFIG=$(HOME)/.gitconfig
VUNDLE=$(HOME)/.vim/bundle/vundle
TMP_VIM_COLORS=$(HOME)/.vim/colors
ITERM_COLORS=$(HOME)/adio.itermcolors
SNIPPETS=$(HOME)/.vim/snippets

all: dotfiles vim snippets iterm-colors

dotfiles:

	@ln -fs $(PWD)/bash_profile $(BASH_PROFILE)
	@echo "Installed $(BASH_PROFILE)"

	@ln -fs $(PWD)/tmux.conf $(TMUX)
	@echo "Installed $(TMUX)"

	@curl -sSo $(TMUX_COLORS) https://raw.github.com/adrianolaru/adio-theme/master/tmux/adio.tmuxcolors 
	@echo "Installed $(TMUX_COLORS)"

	@ln -fs $(PWD)/gitconfig $(GITCONFIG)
	@echo "Installed $(GITCONFIG)"


vim:

	@ln -fs $(PWD)/vimrc $(VIMRC)
	@echo "Installed $(VIMRC)"

	@git clone -q https://github.com/gmarik/vundle.git $(VUNDLE)
	@echo "Installed Vundle - Vim plugin manager"

	@mkdir $(TMP_VIM_COLORS)
	@curl -sSo $(TMP_VIM_COLORS)/adio.vim https://raw.github.com/adrianolaru/vim-adio/master/colors/adio.vim 
	@vim +BundleInstall! +qall
	@rm -fr $(TMP_VIM_COLORS)
	@echo "Installed Vim plugins"


snippets:

	@git clone -q git@github.com:adrianolaru/snippets.git $(SNIPPETS)
	@echo "Installed snippets to $(SNIPPETS)"


tmux-colors:

	@curl -sSo $(TMUX_COLORS) https://raw.github.com/adrianolaru/adio-theme/master/tmux/adio.tmuxcolors
	@echo "Updated $(TMUX_COLORS)"


iterm-colors:

	@curl -sSo $(ITERM_COLORS) https://raw.github.com/adrianolaru/adio-theme/master/iTerm2/adio.itermcolors 
	@open "$(ITERM_COLORS)"
	@rm -f "$(ITERM_COLORS)"
	@echo "Imported iTerm2 adio preset"


clean:
	rm -f $(BASH_PROFILE)
	rm -f $(VIMRC)
	rm -fr $(HOME)/.vim
	rm -f $(TMUX)
	rm -f $(TMUX_COLORS)
	rm -f $(GITCONFIG)

.PHONY: all dotfiles vim tmux-colors iterm-colors snippets clean
