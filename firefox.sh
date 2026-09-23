#!/usr/bin/env bash

shopt -s nullglob

SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )
SETTINGS_DIR="${SCRIPT_DIR}/mozilla/settings/"
POLICIES_DIR="${SCRIPT_DIR}/mozilla/policies/"

killall Firefox > /dev/null 2>&1
killall firefox > /dev/null 2>&1
killall Zen > /dev/null 2>&1
killall zen > /dev/null 2>&1

sleep 1

IS_ROOT=false
if [[ $EUID -eq 0 ]]; then
    IS_ROOT=true
else
    echo "/!\ utilisateur non root les policies ne peuvent être appliquées, relancer en root pour les appliquer."
fi

if [[ "$OSTYPE" == "darwin"* ]] && [[ -d "${SETTINGS_DIR}" ]]; then
    if [[ -d "${HOME}/Library/Application Support/zen/" ]]; then
        for dir in "${HOME}/Library/Application Support/zen/Profiles/"*; do
            for file in "${SETTINGS_DIR}"*; do
                [[ -f "${file}" ]] && cp -f "${file}" "${dir}/"
            done
        done
        if [[ "${IS_ROOT}" == "true" ]]; then
            [[ -d "/Applications/Firefox.app" ]] && sudo mkdir -p "/Applications/Firefox.app/Contents/Resources/distribution/" && sudo cp -f "${POLICIES_DIR}policies.json" "/Applications/Firefox.app/Contents/Resources/distribution/policies.json"
            [[ -d "${HOME}/Applications/Firefox.app" ]] && sudo mkdir -p "${HOME}/Applications/Firefox.app/Contents/Resources/distribution/" && sudo cp -f "${POLICIES_DIR}policies.json" "${HOME}/Applications/Firefox.app/Contents/Resources/distribution/policies.json"
        fi
    fi

    if [[ -d "${HOME}/Library/Application Support/Firefox/" ]]; then
        for dir in "${HOME}/Library/Application Support/Firefox/Profiles/"*; do
            for file in "${SETTINGS_DIR}"*; do
                [[ -f "${file}" ]] && cp -f "${file}" "${dir}/"
            done
        done
        if [[ "${IS_ROOT}" == "true" ]]; then
            [[ -d "/Applications/Zen.app" ]] && sudo mkdir -p "/Applications/Zen.app/Contents/Resources/distribution/" && cp -f "${POLICIES_DIR}policies.json" "/Applications/Zen.app/Contents/Resources/distribution/policies.json"
            [[ -d "${HOME}/Applications/Zen.app" ]] && sudo mkdir -p "${HOME}/Applications/Zen.app/Contents/Resources/distribution/" && cp -f "${POLICIES_DIR}policies.json" "${HOME}/Applications/Zen.app/Contents/Resources/distribution/policies.json"
        fi
    fi
elif [[ "$OSTYPE" == "linux-gnu"* ]] && [[ -d "${SETTINGS_DIR}" ]]; then

    if [[ "${IS_ROOT}" == "true" ]]; then
        for firefox_dir in "/usr/lib/firefox" "/usr/lib64/firefox"; do
            if [[ -d "$firefox_dir" ]]; then
                sudo mkdir -p "${firefox_dir}/distribution"
                sudo cp -f "${POLICIES_DIR}policies.json" "${firefox_dir}/distribution/policies.json"
            fi
        done
        for zen_dir in "/usr/lib/zen" "/usr/lib64/zen" "/opt/zen"; do
            if [[ -d "$zen_dir" ]]; then
                sudo mkdir -p "${zen_dir}/distribution"
                sudo cp -f "${POLICIES_DIR}policies.json" "${zen_dir}/distribution/policies.json"
            fi
        done
    fi

    if [[ -d "${HOME}/.mozilla/firefox" ]]; then
        for dir in "${HOME}/.mozilla/firefox"*"/"*".default-release"*; do
            for file in "${SETTINGS_DIR}"*; do
                [[ -f "${file}" ]] && cp -f "${file}" "${dir}/"
            done
        done
    fi

    if [[ -d "${HOME}/.mozilla/firefox-esr" ]]; then
        for dir in "${HOME}/.mozilla/firefox-esr/"*".default-release"*; do
            for file in "${SETTINGS_DIR}"*; do
                [[ -f "${file}" ]] && cp -f "${file}" "${dir}/"
            done
        done
    fi

    if [[ -d "${HOME}/.zen/firefox/" ]]; then
        for dir in "${HOME}/.zen/firefox/"*".default-release"*; do
            for file in "${SETTINGS_DIR}"*; do
                [[ -f "${file}" ]] && cp -f "${file}" "${dir}/"
            done
        done
    fi

    if [[ -d "${HOME}/.mozilla/zen/firefox/" ]]; then
        for dir in "${HOME}/.mozilla/zen/firefox/"*".default-release"*; do
            for file in "${SETTINGS_DIR}"*; do
                [[ -f "${file}" ]] && cp -f "${file}" "${dir}/"
            done
        done
    fi

    if [[ -d "${HOME}/.var/app/org.mozilla.firefox/.mozilla/firefox/" ]]; then
        for dir in "${HOME}/.var/app/org.mozilla.firefox/.mozilla/firefox/"*".default-release"*; do
            for file in "${SETTINGS_DIR}"*; do
                [[ -f "${file}" ]] && cp -f "${file}" "${dir}/"
            done
        done
    fi

    if [[ -d "${HOME}/snap/firefox/common/.mozilla/firefox/" ]]; then
        for dir in "${HOME}/snap/firefox/common/.mozilla/firefox/"*".default-release"*; do
            for file in "${SETTINGS_DIR}"*; do
                [[ -f "${file}" ]] && cp -f "${file}" "${dir}/"
            done
        done
    fi

    if [[ -d "${HOME}/.var/app/io.github.zen_browser.zen/.zen/" ]]; then
        for dir in "${HOME}/.var/app/io.github.zen_browser.zen/.zen/"*".default-release"*; do
            for file in "${SETTINGS_DIR}"*; do
                [[ -f "${file}" ]] && cp -f "${file}" "${dir}/"
            done
        done
    fi

    if [[ -d "${HOME}/.var/app/io.github.zen_browser.zen/.mozilla/" ]]; then
        for dir in "${HOME}/.var/app/io.github.zen_browser.zen/.mozilla/"*".default-release"*; do
            for file in "${SETTINGS_DIR}"*; do
                [[ -f "${file}" ]] && cp -f "${file}" "${dir}/"
            done
        done
    fi
fi