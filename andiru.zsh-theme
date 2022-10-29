# andiru.zsh-theme

# git settings from amuse and fishy
ZSH_THEME_GIT_PROMPT_PREFIX=" on %{$fg[magenta]%}\uE0A0 " # Must use Powerline font, for \uE0A0 to render.
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY=""
ZSH_THEME_GIT_PROMPT_CLEAN=""

ZSH_THEME_GIT_PROMPT_ADDED="%{$fg_bold[green]%}+"
ZSH_THEME_GIT_PROMPT_MODIFIED="%{$fg_bold[blue]%}!"
ZSH_THEME_GIT_PROMPT_DELETED="%{$fg_bold[red]%}-"
ZSH_THEME_GIT_PROMPT_RENAMED="%{$fg_bold[magenta]%}>"
ZSH_THEME_GIT_PROMPT_UNMERGED="%{$fg_bold[yellow]%}#"
ZSH_THEME_GIT_PROMPT_UNTRACKED="%{$fg_bold[cyan]%}?"

# primary prompt based on amuse and fishy
PROMPT='%{$fg_bold[green]%}%~%{$reset_color%}$(git_prompt_info)$(git_prompt_status) $fg_bold[blue][ %{$fg_bold[red]%}%*%{$reset_color%} $fg_bold[blue]]%{$reset_color%}
'
if [[ $(id -u) == 0 ]]; then
    PROMPT+='# '
else
    PROMPT+='$ '
fi

# right prompt from af-magic
RPROMPT="%(?..%{$fg[red]%}%? ↵%{$reset_color%})"
if [[ $+functions[virtualenv_prompt_info] ]]; then
    RPROMPT+='$(virtualenv_prompt_info)'
fi
RPROMPT+=" ${FG[237]}%n@%m%{$reset_color%}"
