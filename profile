
export PATH="$HOME/.rbenv/bin:/Users/me/.bin:/usr/local/bin:/usr/local/sbin:/usr/local/mysql/bin:$PATH"


if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi


alias ll="ls -la"
alias ls="ls -F"
alias mou="open -a Mou"



__prompt () {
  # source git-prompt script
  . /usr/local/Cellar/git/1.8.1.1/etc/bash_completion.d/git-prompt.sh
  # Show unstaged (*) and staged (+) changes next to the branch name
  export GIT_PS1_SHOWDIRTYSTATE=true
  # Show if something is stashed ($) next to the branch name
  export GIT_PS1_SHOWSTASHSTATE=true
  # Show if there're untracked files (%) next to the branch name
  export GIT_PS1_SHOWUNTRACKEDFILES=true
  # Show the difference between HEAD and its upstream ("auto"). Ahead (<), Behind (>), Diverged (<>), No Difference (=)
  # You can further control behaviour by setting GIT_PS1_SHOWUPSTREAM to a space-separated list of values:
  #   - verbose - show number of commits ahead/behind (+/-) upstream
  #   - legacy - don't use the '--count' option available in recent versions of git-rev-list
  #   - git - always compare HEAD to @{upstream}
  #   - svn - always compare HEAD to your SVN upstream
  export GIT_PS1_SHOWUPSTREAM="verbose" 
  
  export PS1='┌─[\[\e[38;5;29m\]\w\[\e[0m\]\[\e[38;5;238m\]$(__git_ps1 " (%s)")\[\e[0m\]]\n└─╼ '
}

__prompt
