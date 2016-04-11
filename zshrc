source $HOME/src/dotfiles/antigen/antigen.zsh

#Load the oh-my-zsh library
antigen use oh-my-zsh

#Bundles
antigen bundle git
antigen bundle zsh-users/zsh-syntax-highlighting

#Theme
antigen theme simple

#Tell antigen we are done.
antigen apply

[[ -f ~/.aliases ]] && source ~/.aliases

export EDITOR='vim'

export PATH="$HOME/.rbenv/bin:/.bin:/usr/local/bin:/usr/local/sbin:/Applications/Postgres.app/Contents/Versions/latest/bin:$PATH"
eval "$(rbenv init -)"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
