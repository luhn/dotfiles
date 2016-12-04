# Load antigen
source $HOME/config/antigen.zsh

antigen-use oh-my-zsh

antigen theme robbyrussell
antigen bundle osx
antigen bundle git
antigen bundle zsh-users/zsh-syntax-highlighting

antigen apply

# Some handy commands
alias pycclean="find . -name '*.pyc' -delete"
alias swpclean="find . -name '.*.swp' -delete"
alias origclean="find . -name '*.orig' -delete"
alias bell="afplay /System/Library/Sounds/Glass.aiff"
alias lock="open -a /System/Library/Frameworks/ScreenSaver.framework/Versions/A/Resources/ScreenSaverEngine.app"

# Password generation
alias nicepass="xkcdpass -w ~/Config/words.txt -n 4"
alias password="python -c \"from os import urandom; from base64 import urlsafe_b64encode; print(urlsafe_b64encode(urandom(12)))\""

# virtualenv should use Distribute instead of legacy setuptools
export VIRTUALENV_DISTRIBUTE=true
# pip should only run if there is a virtualenv currently activated
export PIP_REQUIRE_VIRTUALENV=true
# cache pip-installed packages to avoid re-downloading
# export PIP_DOWNLOAD_CACHE=$HOME/.pip/cache

syspip(){
	PIP_REQUIRE_VIRTUALENV="" pip "$@"
}

syspip3(){
	PIP_REQUIRE_VIRTUALENV="" pip3 "$@"
}

# Don't write .pyc files.
PYTHONDONTWRITEBYTECODE=True
export PYTHONDONTWRITEBYTECODE

# FUCK!
export THEFUCK_REQUIRE_CONFIRMATION=false
alias fuck='eval $(thefuck $(fc -ln -1))'

# Terraform utils
alias tfplan='terraform plan -out .tfplan'
alias tfapply='terraform apply .tfplan; rm .tfplan'

# Don't clear pager for psql.
export PAGER="less -X"

# Use vim as the default editor for everything.
export EDITOR=/usr/local/bin/vim

# Use vim mode
bindkey -v
bindkey '^R' history-incremental-search-backward
bindkey '^S' history-incremental-search-forward
bindkey '^P' history-search-backward
bindkey '^N' history-search-forward

# Docker
eval $(docker-machine env default)

# Rackspace credentials
source ~/.rackspace-cred
