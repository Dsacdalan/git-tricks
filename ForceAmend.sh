#!/bin/bash

# Adds all changes and forces a no edit ammend to origin.
forceAmend() {
    git add .
    echo -e
    git status
    read -r -p "${1:-CHANGES WILL BE FORCED ONTO ORIGIN [y/N]} " response
    case "$response" in
        [yY][eE][sS]|[yY])
            git commit --amend --no-edit
            echo -e
            git push --force
            echo -e
            ;;
        *)
            git reset .
            echo -e
            ;;
    esac
    git status
    echo -e
}
