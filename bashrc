# some more ls aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'


# custom prompt including VCS status - use http://vc.gerg.ca/hg/vcprompt
export PS1='\W$(vcprompt -f " (%u%m%b)"): '

[ -z "$TMUX" ] && export TERM=xterm-256color

# for GNOME dircolors - use http://github.com/seebi/dircolors-solarized
eval `dircolors ~/.dir_colors`
