#!/usr/bin/env bash

function error_message() {
    echo "Usage: ~/.config/nvim/nvimupdate.sh <-M>"
    echo "  -M : Update installed Mason packages"
}

if [[ $# -ne 1 ]]; then
    echo "ERROR: nvimupdate.sh needs 1 argument"
    error_message
    [[ "${BASH_SOURCE[0]}" = "${0}" ]] || return 1 && exit 1
fi

if [[ "$1" == "-M" ]]; then
    echo "Updating Mason packages"
    nvim --headless "+MasonUpdate" "+MasonToolsUpdateSync" +qa
else
    echo "ERROR: Invalid argument passed to nvimupdate.sh"
    error_message
    [[ "${BASH_SOURCE[0]}" = "${0}" ]] || return 1 && exit 1
fi
