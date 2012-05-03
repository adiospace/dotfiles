export TERM=xterm-256color
export CLICOLOR=1
export LSCOLORS=gxfxbEaEBxxEhEhBaDaCaD

alias ll='ls -alF'
alias la='ls -A'

# custom prompt including VCS status - use http://vc.gerg.ca/hg/vcprompt
export PS1='\W$(vcprompt -f " (%u%m%b)"): '

# for GNOME dircolors - use http://github.com/seebi/dircolors-solarized
# eval `dircolors ~/.dir_colors`
