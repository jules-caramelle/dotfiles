#!/usr/bin/env bash

SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )

if [[ "${SCRIPT_DIR}" = "${HOME}/dotfiles" ]]; then
    [[ -f "${HOME}/.bashrc" ]] && mv "${HOME}/.bashrc" "${HOME}/.bashrc.old.backup"
    ln -s "${SCRIPT_DIR}/bashrc" "${HOME}/.bashrc"
    [[ -f "${HOME}/.zshhrc" ]] && mv "${HOME}/.zshrc" "${HOME}/.zshrc.old.backup"
    ln -s "${SCRIPT_DIR}/zshrc" "${HOME}/.zshrc"
else
    echo "Merci de mettre dotfiles dans votre dossier personnel."
fi