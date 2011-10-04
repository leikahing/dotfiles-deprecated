# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="momohime"

function edit_theme {
    vim ${HOME}/.oh-my-zsh/themes/$ZSH_THEME.zsh-theme
}

# Setting my history
HISTFILE=${HOME}/.zsh_history

SAVEHIST=10000
HISTSIZE=10000

# Append to history, not clobber
setopt APPEND_HISTORY
# Share history between shells
setopt SHARE_HISTORY
# Ignore duplicate commands in history
setopt HIST_IGNORE_DUPS
setopt HIST_IGNORE_ALL_DUPS
setopt HIST_REDUCE_BLANKS




# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git)

bindkey -o vi

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
export PATH=/usr/local/share/python:/usr/local/bin:/usr/local/sbin:$PATH

export LSCOLORS=gxBxhxDxfxhxhxhxhxcxcx

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

alias dotpro="vim ${HOME}/.zshrc"

function hsrc {
    pushd ${HOME}/src/hubspot/$1
}

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"
