
touch $HOME/.localrc

DIR=`dirname ${BASH_SOURCE[0]-$0}`
DIR=`cd $DIR && pwd`

# symlink
ln -s $DIR/.zshrc $HOME/.zshrc
ln -s $DIR/.vimrc $HOME/.vimrc
ln -s $DIR/.gitconfig $HOME/.gitconfig
ln -s $DIR/.gitignore $HOME/.gitignore
ln -s $DIR/.tmux.conf $HOME/.tmux.conf
ln -s $DIR/.psqlrc $HOME/.psqlrc

# Install antigen
git clone https://github.com/zsh-users/antigen.git ~/.antigen-src
