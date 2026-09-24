#!/usr/bin/env bash

if [[ -d "/opt/homebrew" ]] && [[ "$OSTYPE" == "darwin"* ]]; then
    brew update
    brew upgrade

    # Taps
    brew tap domt4/autoupdate
    brew tap teamookla/speedtest

    BREW_PREFIX=$(brew --prefix)

    # Formulae
    brew install asciidoctor
    brew install bash
    brew install bash-completion2
    brew install btop
    brew install coreutils
    brew install docker
    brew install dotnet
    brew install fail2ban
    brew install fastfetch
    brew install findutils
    brew install fzf
    brew install gcc
    brew install git
    brew install git-filter-repo
    brew install git-gui
    brew install gnu-sed
    brew install grep
    brew install lua
    brew install lynis
    brew install moreutils
    brew install nano
    brew install nmap
    brew install openjdk
    brew install openssh
    brew install pandoc
    brew install postgresql@18
    brew install powershell
    brew install proton-pass-cli
    brew install python@3.14
    brew install ruby
    brew install screen
    brew install ssh-copy-id
    brew install teamookla/speedtest/speedtest
    brew install tlrc
    brew install tree
    brew install vim
    brew install wakeonlan
    brew install watch
    brew install wget
    brew install wireguard-tools
    brew install wireshark
    brew install zsh

    # Faire de zsh le bash par défaut
    if ! fgrep -q "${BREW_PREFIX}/bin/zsh" /etc/shells; then
        echo "${BREW_PREFIX}/bin/zsh" | sudo tee -a /etc/shells;
        chsh -s "${BREW_PREFIX}/bin/zsh";
    fi;

    # Casks
    brew install --cask aldente
    brew install --cask balenaetcher
    brew install --cask crossover
    brew install --cask discord
    brew install --cask docker-desktop
    brew install --cask figma
    brew install --cask firefox
    brew install --cask google-drive
    brew install --cask helium-browser
    brew install --cask iina
    brew install --cask intellij-idea
    brew install --cask iterm2
    brew install --cask jetbrains-toolbox
    brew install --cask localsend
    brew install --cask multiviewer
    brew install --cask parallels
    brew install --cask parsec
    brew install --cask plex-media-server
    brew install --cask prismlauncher
    brew install --cask proton-pass
    brew install --cask pycharm
    brew install --cask rectangle
    brew install --cask topnotch
    brew install --cask tunnelblick
    brew install --cask vorssaint
    brew install --cask vscodium
    brew install --cask webstorm
    brew install --cask wireshark-app
    brew install --cask xquartz
    brew install --cask zen

    brew cleanup
fi

brew autoupdate start --greedy --upgrade --cleanup --sudo --immediate --notify-on-error 3m