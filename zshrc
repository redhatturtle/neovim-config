# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

ZSH_THEME="cloud_kris"

plugins=(
  git
  zsh-autosuggestions
  docker-compose
  z
  zsh-syntax-highlighting
  history-substring-search
  command-not-found
  copydir
  copyfile
  dircycle
)

source $ZSH/oh-my-zsh.sh
. ~/z.sh

if [[ -r ~/.phpbrew/bashrc ]]; then
  source ~/.phpbrew/bashrc
fi

alias n='nvim .'
alias install='sudo apt-get install'
alias search='sudo apt-cache search'
alias purge='sudo apt-get purge'
alias update='sudo apt-get purge'
alias c7="sudo chmod -R 777"
alias l="ls -l"
alias c="clear"
alias www="cd /var/www"
alias weather="curl http://wttr.in/Novi sad"
alias gs="git status"
alias code="cd ~/code"
alias lg="lazygit"

export PATH=$PATH:/usr/local/go/bin:~/go/bin
export LESS=R
export EDITOR=nvim
export MANPAGER="nvim -c 'set ft=man' -"
export FZF_DEFAULT_COMMAND='rg --files'
export LESS=R
export HISTORY_SUBSTRING_SEARCH_HIGHLIGHT_FOUND="fg=magenta,bold,underline"
setopt HIST_IGNORE_ALL_DUPS

# use ctrl+t to toggle autosuggestions(hopefully this wont be needed as
# zsh-autosuggestions is designed to be unobtrusive)
bindkey '^t' autosuggest-execute
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=242'
[ -f ~/.zsh_secret ] && source ~/.zsh_secret

export NVM_DIR="/home/kristijan/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
[ -z "$TMUX" ] && exec tmux

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
