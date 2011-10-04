if [ -f `brew --prefix`/etc/bash_completion ]; then
      . `brew --prefix`/etc/bash_completion
fi

#alias ls='ls -Gp'
#export CLICOLOR=1
export LSCOLORS=gxBxhxDxfxhxhxhxhxcxcx

export PATH=/usr/local/share/python:/usr/local/bin:/usr/local/sbin:$PATH

#alias ls='gls --color'
alias comm='gcomm'
alias dircolors='gdircolors'
alias tar='gtar'
alias sed='gsed'
alias awk='gawk'
alias cut='gcut'
alias sort='gsort'
alias uniq='guniq'
alias tail='gtail'
alias head='ghead'
alias tee='gtee'
alias xargs='gxargs'
alias find='gfind'
alias cat='gcat'


alias ls='ls -Gp'

alias c='cd $1'
alias p='pushd'
alias v='vim'
alias l='ls'
alias .='cd ..'
alias ..='cd ../..'
alias ...='cd ../../..'
alias ....='cd ../../../..'

alias g='git'
alias gsr='git svn rebase'
alias gs='git svn'
alias dotpro='vim ~/.bash_profile'


PS1="\u@\h:\w\n$ "

HISTFILESIZE=10000
HISTSIZE=10000
HISTCONTROL=ignoredups
shopt -s histappend
shopt -s checkwinsize
PROMPT_COMMAND="history -a;$PROMPT_COMMAND"

set -o vi

topcmd()
{
    numlist=25
    echo "Top ${numlist} most used commands in history"
    #gcut -fl -d" " ${HOME}/.bash_history | sort | uniq -c | sort -nr | head -n ${numlist}
    history | awk '{print $2}' | awk 'BEGIN {FS="|"}{print $1}' | sort | uniq -c | sort -n | tail -n $numlist | sort -nr
}

hsrc()
{
    pushd ~/src/hubspot/$1
}

hpy()
{
    hsrc gitpython
}

gts()
{
    pushd ~/src
}

invent()
{
    pushd ~/src/hubspot/invent/$1
}

repoch()
{
    let "secs=$1/1000";
    gdate -d @${secs} "+%m/%d/%y %H:%M"
}

rvm_up() {
    bash < <(curl -s https://rvm.beginrescueend.com/install/rvm)
}

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"
#[[ -s "$HOME/.pythonbrew/etc/bashrc" ]] && source $HOME/.pythonbrew/etc/bashrc

