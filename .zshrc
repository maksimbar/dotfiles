#!/bin/zsh

## autoload vcs and colors
setopt nomatch menucomplete
stty stop undef # disable ctrl-s to freeze terminal
autoload -U colors && colors
zle_highlight=('paste:none') # remove highlighting on paste

unsetopt BEEP # removes beeping

# History in cache directory:
HISTFILE=~/.cache/zsh_history
HISTSIZE=10000
SAVEHIST=10000
setopt appendhistory

# Basic auto/tab complete:
autoload -U compinit
compinit

# vi mode
bindkey -e

bindkey "\e[1;5C" forward-word
bindkey "\e[1;5D" backward-word

# open next terminal in current directory
precmd () {print -Pn "\e]2; %~/ \a"}
preexec () {print -Pn "\e]2; %~/ \a"}

# Load version control information
autoload -Uz vcs_info
precmd() {
  vcs_info
}

export GPG_TTY=$(tty)

# Format the vcs_info_msg_0_ variable
zstyle ':vcs_info:git:*' formats '%F{12}on branch%f %F{13}%b%f'

# Set up the prompt (with git branch name)
autoload -U promptinit
promptinit
setopt PROMPT_SUBST
PROMPT='%F{13}%n%f %F{15}in %U${PWD/#$HOME/~}%u ${vcs_info_msg_0_} > '

# case-insensitive,partial-word and then substring completion
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}' 'r:|[._-]=* r:|=*' 'l:|=* r:|=*'

# useful aliases
alias ls='ls -lah --color=auto'
alias grep='grep --color=auto'

link() {
  ln -nfs $1 $2
}

# fzf things
source "/usr/share/fzf/key-bindings.zsh"
source "/usr/share/fzf/completion.zsh"

source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/share/zsh/plugins/zsh-z/zsh-z.plugin.zsh

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

export PATH=/home/max/.cargo/bin:$PATH
export TERM='xterm-256color'
