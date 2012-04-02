# some more ls aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

# maybe there's a better method...like exporting the TERM
alias tmux='TERM=screen-256color-bce tmux'

# custom prompt including VCS status - use http://vc.gerg.ca/hg/vcprompt
export PS1='\W$(vcprompt -f " (%u%m%b)"): '

# for dircolors - use http://github.com/seebi/dircolors-solarized
eval `dircolors ~/.dir_colors`
