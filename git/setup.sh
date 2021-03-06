#!/bin/bash

set -e

DIR=`readlink -f $(dirname $0)`
ROOT=$DIR/..

. $ROOT/_common.sh

log "Setup git..."
rm -f ~/.gitconfig
rm -f ~/.gitignore_global
ln -s $DIR/.gitconfig ~/.gitconfig
ln -s $DIR/.gitignore_global ~/.gitignore_global
if [[ ! -e ~/.gitconfig_ignored ]]; then
	cp -f $DIR/.gitconfig_ignored ~/.gitconfig_ignored
fi
log "Done!"
