
# Git shortcuts

alias gl="git log --color --graph --pretty=format:'%C(yellow)%h%Creset -%C(bold red)%d%Creset %s %Cgreen(%cr)%C(bold blue)<%an>%Creset' --abbrev-commit --all"
alias gg='git log --decorate --oneline --graph --date-order --all'
alias gs='git status'
alias gd='git diff'
alias gdc='gd --cached'
alias gba='git branch -a'

# Current branch or SHA if detached.
alias gbs='git branch | perl -ne '"'"'/^\* (?:\(detached from (.*)\)|(.*))/ && print "$1$2"'"'"''
