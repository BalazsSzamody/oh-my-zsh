# vim:ft=zsh ts=2 sw=2 sts=2

rvm_current() {
  rvm current 2>/dev/null
}

rbenv_version() {
  rbenv version 2>/dev/null | awk '{print $1}'
}

HOSTNAME = $HOST

PROMPT='
$(hostname) %{$fg_bold[green]%}${PWD/#$HOME/~}%{$reset_color%}      $(git_prompt_info)
😎 $ '


ZSH_THEME_GIT_PROMPT_PREFIX="    \033[38;5;208m<  "
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}\033[38;5;208m  >%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[red]%}!"
ZSH_THEME_GIT_PROMPT_UNTRACKED="%{$fg[green]%}?"
ZSH_THEME_GIT_PROMPT_CLEAN=""
