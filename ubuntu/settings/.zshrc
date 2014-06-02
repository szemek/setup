source $ZSH/oh-my-zsh.sh
source /etc/zsh_command_not_found
source /usr/share/autojump/autojump.sh

# stop autocorrect
unsetopt correct_all

# Customize to your needs...
PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

alias n='nginx'
alias s='rails server'
alias be='bundle exec'

alias lh='ls -alh'

alias vim='stty -ixon -ixoff && /usr/bin/vim'
alias tag="ctags -R --exclude=.git --exclude=.js --exclude=log *"

alias open='xdg-open'
alias ack='ack-grep'
alias deploy='git push origin master &; git push heroku master &'
alias deployforce='git push origin master --force; git push heroku master --force'
alias powersave='sudo cpufreq-set -c 0 -g powersave; sudo cpufreq-set -c 1 -g powersave'
alias ondemand='sudo cpufreq-set -c 0 -g ondemand; sudo cpufreq-set -c 1 -g ondemand'

alias rake='noglob rake'

alias gall='git add -A .'
alias ggpull='git pull --rebase origin $(current_branch)'
alias gco.='git checkout .'
alias ga='git add -A'
alias gs='git status'

export ACK_OPTIONS='--ignore-dir=node_modules'
export BUNDLER_EDITOR=vim

export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
export LANGUAGE=en_US.UTF-8

local ret_status="%(?:%{$fg_bold[red]%}➜ :%{$fg_bold[red]%}➜ %s)"
