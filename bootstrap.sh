#!/usr/bin/env bash

cd "$(dirname "${BASH_SOURCE}")";

git pull origin master;

function doIt() {
    rsync --exclude ".git/" --exclude ".DS_Store" --exclude "bootstrap.sh" \
        --exclude "README.md" --exclude "LICENSE-MIT.txt" -avh --no-perms . ~;
    # source ~/.bash_profile;
    # 更改pydiction-dict目录的位置, mac下的sed和linux不一样,需要判断下
    if [[ `uname` == 'Darwin' ]]; then
        sed -i "" "s|\$HOME|$HOME|" $HOME/.vimrc
    else
        sed -i "s|\$HOME|$HOME|" $HOME/.vimrc
    fi
}

if [ "$1" == "--force" -o "$1" == "-f" ]; then
    doIt;
else
    read -p "This may overwrite existing files in your home directory. Are you sure? (y/n) " -n 1;
    echo "";
    if [[ $REPLY =~ ^[Yy]$ ]]; then
        doIt;
    fi;
fi;
unset doIt;
