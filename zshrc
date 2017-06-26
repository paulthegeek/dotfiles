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
export PATH="$HOME/.rbenv/bin:$PATH"

# Docker
# Only set this up if you are using docker machine
#export STUDIO_BUILD_DIR="/Users/pauljackson/src/dev/studio-build"
#export DOCKER_TLS_VERIFY="1"
#export DOCKER_HOST="tcp://192.168.99.100:2376"
#export DOCKER_CERT_PATH="/Users/pauljackson/.docker/machine/machines/studio-docker"
#export DOCKER_MACHINE_NAME="studio-docker"

# Go
export GOPATH="$HOME/src/dev/go"

# Java
export JAVA_HOME="/Library/Java/JavaVirtualMachines/jdk1.8.0_121.jdk/Contents/Home/jre/"
export M2="/usr/local/apache-maven/apache-maven-3.0.5/bin"
export PATH="$M2:$PATH"
export MAVEN_OPTS="-Xmx1024m"
export RE_DEBUG=1
