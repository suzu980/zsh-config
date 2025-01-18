autoload -Uz vcs_info
precmd_vcs_info() { vcs_info }
precmd_functions+=( precmd_vcs_info )
setopt prompt_subst
RPROMPT='%F{red}${vcs_info_msg_0_}%f'
# PROMPT='${vcs_info_msg_0_}%# '
PROMPT='%F{green}%*%f %~ '
zstyle ':vcs_info:git:*' formats '%b'

# Shortcuts because I am lazy
alias gtp="cd Documents/Programming"
alias edit-zshrc="vim ~/.zshrc"
alias source-zshrc="source ~/.zshrc"
alias update-zshrc-remote="cp ~/.zshrc ~/Documents/Programming/zshrc-config/"
