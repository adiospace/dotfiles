################################################################
# Custom PATH
################################################################

export PATH=~/bin:/usr/local/bin:$PATH


################################################################
# Custom PROMPT with git support
################################################################

source ~/bin/git-prompt.sh
# Show unstaged (*) and staged (+) changes next to the branch name
export GIT_PS1_SHOWDIRTYSTATE=true
# Show if something is stashed ($) next to the branch name
export GIT_PS1_SHOWSTASHSTATE=true
# Show if there're untracked files (%) next to the branch name
export GIT_PS1_SHOWUNTRACKEDFILES=true
# Show the difference between HEAD and its upstream. Use "auto" or "verbose".
# - auto:
#   - Show Ahead (<)
#   - Behind (>)
#   - Diverged (<>)
#   - No Difference (=)
# - verbose: Show number of commits ahead/behind (+/-) upstream (i.e. u+1, u-1, u=)
export GIT_PS1_SHOWUPSTREAM="verbose"
# Customize the prompt
export PS1='\[\033[0;34m\]\w\[\033[0m\]\[\033[0;90m\]$(__git_ps1 " (%s)")\[\033[0m\]: '


################################################################
# NODE CONFIG - nvm
################################################################

[ -s "/Users/adio/.nvm/nvm.sh" ] && . "/Users/adio/.nvm/nvm.sh"


################################################################
# RUBY CONFIG - rbenv
################################################################

eval "$(rbenv init -)"


################################################################
#  Aliases
################################################################

# use the faster macvim build
alias vim="/Applications/MacVim.app/Contents/MacOS/Vim"
alias vi="vim"
alias ll="ls -l"
