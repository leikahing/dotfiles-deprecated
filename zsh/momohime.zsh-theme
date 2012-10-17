function get_hostname {
    
}

LAMBDA_PROMPT="%{$fg_bold[cyan]%}λ%{$reset_color%}"

PROMPT=$'%n@${HOST}:${PWD/#$HOME/~} $(git_prompt_info)%{$reset_color%}\n${LAMBDA_PROMPT} > '


ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg[green]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%} "

