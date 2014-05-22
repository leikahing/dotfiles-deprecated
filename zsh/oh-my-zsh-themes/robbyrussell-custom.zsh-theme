#local ret_status="%(?:%{$fg_bold[green]%}➜ :%{$fg_bold[red]%}➜ %s)"
#
#

function prompt_char {
    git branch > /dev/null 2>/dev/null && echo '±' && return
    echo 'λ'
}

function collapse_pwd {
    echo $(pwd | sed -e "s,^$HOME,~,")
}
# ➜

local ret_status="%(?:%{$fg_bold[green]%}$(prompt_char) :%{$fg_bold[red]%}$(prompt_char) %s)"
PROMPT=$'%B%{$fg[green]%}%n%{$reset_color%}%b on %B%{$fg[cyan]%}${HOST}%{$reset_color%}%b:$(collapse_pwd) \n${ret_status}%{$fg_bold[green]%}%p %{$fg[cyan]%}%c %{$fg_bold[blue]%}$(git_prompt_info)%{$fg_bold[blue]%} % %{$reset_color%}'

ZSH_THEME_GIT_PROMPT_PREFIX="git:(%{$fg[red]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[blue]%}) %{$fg[yellow]%}✗%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[blue]%})"
