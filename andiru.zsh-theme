# andiru.zsh-theme

# git settings from amuse
ZSH_THEME_GIT_PROMPT_PREFIX=" on %{$fg[magenta]%}\uE0A0 " # Must use Powerline font, for \uE0A0 to render.
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[red]%}!"
ZSH_THEME_GIT_PROMPT_UNTRACKED="%{$fg[green]%}?"
ZSH_THEME_GIT_PROMPT_CLEAN=""

# primary prompt from amuse (without clock symbol but time in blue [])
PROMPT='%{$fg_bold[green]%}%~%{$reset_color%}$(git_prompt_info) $fg_bold[blue][ %{$fg_bold[red]%}%*%{$reset_color%} $fg_bold[blue]]%{$reset_color%}
$ '

# right prompt from af-magic
RPROMPT="%(?..%{$fg[red]%}%? ↵%{$reset_color%})"
if (( $+functions[virtualenv_prompt_info] )); then
  RPROMPT+='$(virtualenv_prompt_info)'
fi
RPROMPT+=" ${FG[237]}%n@%m%{$reset_color%}"
