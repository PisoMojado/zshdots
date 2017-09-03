#!/usr/bin/env zsh

ZSH_DOT_DIR="${0:a:h}"

cd "${ZSH_DOT_DIR}"
git submodule update --init --recursive
cd -

check_var=true
if [ -d "${HOME}/.zsh" ]
then
    echo "Moving .zsh dir..."
    mv "${HOME}/.zsh" "${HOME}/.zsh.BAK"
    check_var=$?
fi
[ ${check_var} = true ] && ln -s "${ZSH_DOT_DIR}/powerlevel9k" "${HOME}/.zsh"

if [ -f "${HOME}/.zshrc" ]
then
    echo "Moving existing .zshrc file..."
    mv "${HOME}/.zshrc" "${HOME}/.zshrc.BAK"
    check_var=$?
fi
[ ${check_var} = true ] && ln -s "${ZSH_DOT_DIR}/.zshrc" "${HOME}/"

