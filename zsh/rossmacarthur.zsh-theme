#!/usr/bin/env zsh

if [[ $UID -eq 0 ]]; then
  local user_symbol='#'
else
  local user_symbol='$'
fi

local context="%{$fg_bold[grey]%}%m%{$reset_color%} "
local ret_status="%(?:%{$fg_bold[green]%}:%{$fg_bold[red]%})${user_symbol}%{$reset_color%} "
local directory="%{$fg_bold[blue]%}%~%{$reset_color%} "
PROMPT='${context}${directory}$(git_prompt_info)${ret_status}'

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg_bold[magenta]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%} "
ZSH_THEME_GIT_PROMPT_DIRTY="*"
ZSH_THEME_GIT_PROMPT_CLEAN=""
