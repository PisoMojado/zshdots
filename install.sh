#!/usr/bin/env zsh

ZSH_DOT_DIR="$( cd "$( dirname "$0" )" && pwd )"

cd "${ZSH_DOT_DIR}"
git submodule update --init --recursive
cd -

which stow
if [ $? = 0 ]
then
    stow -d ${ZSH_DOT_DIR} -t ${HOME} zsh
else
    echo "Please install stow before running installer"
fi

