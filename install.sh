#!/usr/bin/env zsh

ZSH_DOT_DIR="${0:a:h}"

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

