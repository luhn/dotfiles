#!/bin/sh -ex

# Get directory of this script.
DIR=`dirname ${BASH_SOURCE[0]-$0}`
DIR=`cd $DIR && pwd`

# Delete existing files
rm $HOME/.zshrc \
	$HOME/.zprofile \
	$HOME/.vimrc \
	$HOME/.gitignore \
	$HOME/.gitconfig \
	$HOME/.tmux.conf \
	$HOME/.psqlrc \
	$HOME/.aws/config \
	|| true

touch $HOME/.localrc
mkdir -p $HOME/.aws

# Symlink new dotfiles
ln -s $DIR/.zshrc $HOME/.zshrc
ln -s $DIR/.zprofile $HOME/.zprofile
ln -s $DIR/.vimrc $HOME/.vimrc
ln -s $DIR/.gitconfig $HOME/.gitconfig
ln -s $DIR/.gitignore $HOME/.gitignore
ln -s $DIR/.tmux.conf $HOME/.tmux.conf
ln -s $DIR/.psqlrc $HOME/.psqlrc
ln -s $DIR/awsconfig $HOME/.aws/config
