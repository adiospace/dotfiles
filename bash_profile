# Define PATH
export PATH="$HOME/.rbenv/bin:$HOME/.bin:/usr/local/bin:/usr/local/sbin:/usr/local/share/npm/bin:/usr/local/mysql/bin:$PATH"

#
# Custom PS1 with git support
#
# Init git-prompt script
. ~/.bin/git-prompt.sh
# Show unstaged (*) and staged (+) changes next to the branch name
export GIT_PS1_SHOWDIRTYSTATE=true
# Show if something is stashed ($) next to the branch name
export GIT_PS1_SHOWSTASHSTATE=true
# Show if there're untracked files (%) next to the branch name
export GIT_PS1_SHOWUNTRACKEDFILES=true
# Show the difference between HEAD and its upstream. Use "auto" or "verbose".
# - auto: Show Ahead (<), Behind (>), Diverged (<>), No Difference (=)
# - verbose: Show number of commits ahead/behind (+/-) upstream (i.e. u+1, u-1, u=)
export GIT_PS1_SHOWUPSTREAM="verbose" 
# Defines my custom Prompt
export PS1='┌─[\[\e[38;5;32m\]\w\[\e[0m\]\[\e[38;5;240m\]$(__git_ps1 " (%s)")\[\e[0m\]]\n└─╼ '

# Init ruby environment
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

# Init bash completion
if [ -f $(brew --prefix)/etc/bash_completion ]; then
  . $(brew --prefix)/etc/bash_completion
fi

# Aliases
alias ll="ls -la"
alias ls="ls -F"
alias mou="open -a Mou"
alias o="open"
alias v="vim"
