# Aliases related to GIT
alias gl='git log --pretty=oneline'
alias gs='git status'
alias gd='git diff'
alias gco='git checkout'
alias ga='git add'
alias gpr='git pull --rebase'

# Aliases related to Rails
alias be='bundle exec'
alias ber='be rake'

parse_git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}
#export PS1="\h:\W \u\$(parse_git_branch)\$ "
