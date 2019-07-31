export DOTFILES=$HOME/.dotfiles

source $HOME/.localrc

# Load antigen
source $HOME/.antigen-src/antigen.zsh

antigen-use oh-my-zsh

antigen theme robbyrussell
antigen bundle git
antigen bundle zsh-users/zsh-syntax-highlighting

antigen apply

source $DOTFILES/zsh/python.zsh

# Use vim as the default editor for everything.
export EDITOR=/usr/local/bin/vim

# Use vim mode
bindkey -v
bindkey '^R' history-incremental-search-backward
bindkey '^S' history-incremental-search-forward
bindkey '^P' history-search-backward
bindkey '^N' history-search-forward

# Don't clear pager for psql.
export PAGER="less -X"

# Fix for GPG
export GPG_TTY=$(tty)

# Some handy commands
alias pycclean="find . -name '*.pyc' -delete"
alias swpclean="find . -name '.*.swp' -delete"
alias origclean="find . -name '*.orig' -delete"
alias bell="afplay /System/Library/Sounds/Glass.aiff"
alias lock="open -a /System/Library/Frameworks/ScreenSaver.framework/Versions/A/Resources/ScreenSaverEngine.app"

# Password generation
alias nicepass="xkcdpass -w $DOTFILES/words.txt -n 4"
alias password="python -c \"from os import urandom; from base64 import urlsafe_b64encode; print(urlsafe_b64encode(urandom(12)))\""

# FUCK!
export THEFUCK_REQUIRE_CONFIRMATION=false
alias fuck='eval $(thefuck $(fc -ln -1))'

# Terraform utils
alias tfplan='terraform plan -out=.tfplan -refresh=false'
alias tffreshplan='terraform plan -out=.tfplan'
alias tfapply='terraform apply .tfplan; rm .tfplan'
function tfprod() {
	terraform workspace select prod
	eval "$@"
	ret=$?
	terraform workspace select default
	return $ret
}
