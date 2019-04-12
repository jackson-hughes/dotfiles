# Source aliases
source ~/.aliases

# Set dotfiles alias
alias dotfiles="git --git-dir=$HOME/.dotfiles.git"

# Set PATH
export GOPATH=${HOME}/Projects/go
export PATH=${PATH}:${GOPATH}/bin:/home/jhughes/.gem/ruby/2.5.0/bin

# Zsh options / configuration
unsetopt HISTVERIFY 
setopt INC_APPEND_HISTORY
setopt HIST_FIND_NO_DUPS
setopt HIST_IGNORE_DUPS
setopt HIST_IGNORE_SPACE

autoload -Uz compinit
compinit
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'
zstyle ':completion:*' completer _expand _complete _ignored _approximate
zstyle ':completion:*' menu select=2
zstyle ':completion:*' select-prompt '%SScrolling active: current selection at %p%s'
zstyle ':completion::complete:*' use-cache 1

# PL9K theme optinos
source ~/.powerlevel9k/powerlevel9k.zsh-theme
#POWERLEVEL9K_PROMPT_ON_NEWLINE=true
#POWERLEVEL9K_MODE='awesome-patched'
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(os_icon dir vcs)
POWERLEVEL9K_DIR_HOME_BACKGROUND="208"
POWERLEVEL9K_DIR_HOME_SUBFOLDER_BACKGROUND="208"
POWERLEVEL9K_DIR_HOME_DEFAULT_BACKGROUND="208"
POWERLEVEL9K_DIR_HOME_ETC_BACKGROUND="208"
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(go_version node_version virtualenv rbenv aws)
POWERLEVEL9K_MODE='nerdfont-complete'

# Make control + arrow key move over words in term
bindkey '^[[1;5D' backward-word
bindkey '^[[1;5C' forward-word

