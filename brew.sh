#!/usr/bin/env bash

if [[ -d "/opt/homebrew" ]]; then
    brew update
    brew upgrade

    BREW_PREFIX=$(brew --prefix)
    #Utilitaire de base GNU À JOUR !
    brew install coreutils
    brew install moreutils
    brew install findutils
    brew install gnu-sed
    brew install vim
    brew install grep
    brew install openssh
    brew install screen
    brew install bash
    brew install bash-completion2
    brew install wget
    brew install git
    brew install ssh-copy-id
    brew install tree
    brew install gcc
    brew install nano
    brew install zsh
    #Faire du zsh à jour le bash par défaut
    if ! fgrep -q "${BREW_PREFIX}/bin/zsh" /etc/shells; then
        echo "${BREW_PREFIX}/bin/zsh" | sudo tee -a /etc/shells;
        chsh -s "${BREW_PREFIX}/bin/zsh";
    fi;
    #Utilitaires perso
    brew install asciidoctor
    brew install btop
    brew install docker
    brew install fail2ban
    brew install fastfetch
    brew install fzf
    brew install lua
    brew install openjdk
    brew install postgresql@18
    brew install nmap
    brew install proton-pass-cli
    brew install ruby
    brew install python@3.14
    brew install wakeonlan
    brew install wireguard-tools

    #cask
    brew install --cask aldente
    brew install --cask balenaetcher
    brew install --cask crossover
    brew install --cask discord
    brew install --cask docker-desktop
    brew install --cask google-drive
    brew install --cask helium-browser
    brew install --cask iina
    brew install --cask iterm2
    brew install --cask localsend
    brew install --cask multiviewer
    brew install --cask parallels
    brew install --cask parsec
    brew install --cask rectangle
    brew install --cask tunnelblick
    brew install --cask vorssaint
    brew install --cask vscodium
    brew install --cask whatsapp
    brew install --cask wireshark-app
    brew install --cask zen


    brew cleanup
fi