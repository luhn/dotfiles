
# Init pyenv
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"

# Configure pyenv
export PYENV_ROOT="$HOME/.pyenv"

# Configure poetry
export PATH=$PATH:~/.poetry/bin

# pip should only run if there is a virtualenv currently activated
export PIP_REQUIRE_VIRTUALENV=true

# Use to install packages outside of virtualenv
syspip(){
	PIP_REQUIRE_VIRTUALENV="" pip "$@"
}
