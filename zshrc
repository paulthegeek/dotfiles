source $HOME/src/dotfiles/antigen/antigen.zsh

#Load the oh-my-zsh library
antigen use oh-my-zsh

#Bundles
antigen bundle git
antigen bundle zsh-users/zsh-syntax-highlighting

#Theme
antigen theme af-magic

#Tell antigen we are done.
antigen apply

[[ -f ~/.aliases ]] && source ~/.aliases

export EDITOR='vim'

export PATH="$HOME/.bin:/usr/local/bin:/usr/local/sbin:$PATH"
eval "$(rbenv init - --no-rehash zsh)"

export NVM_DIR="/Users/metropolis/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
