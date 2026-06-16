#!/bin/bash

if [[ -x "$(command -v git)" ]]; then
    echo "Git detected, configuring user.name and user.email"
    git config --global user.name "Honeydipper AI"
    git config --global user.email "bot@honeydipper.io"
    if [[ -x "$(command -v gh)" ]] && [[ -n "$GH_TOKEN" ]]; then
        echo "GitHub CLI detected and GH_TOKEN is set, configuring Git credentials"
        git config --global 'credential.https://github.com.helper' ''
        git config --global --add 'credential.https://github.com.helper' '!gh auth git-credential'
    fi
fi

mkdir -p .hd-exec workspace
env > .hd-exec/env.list
touch .hd-exec/initialized
while true;
do
    if [ -f .hd-exec/quit ]; then
        echo "Quit signal received. Exiting."
        break
    fi
    counter="$(cat .hd-exec/counter 2>/dev/null || echo 0)"
    if [ "$counter" -gt "34560" ]; then
        echo "Idle timeout reached. Exiting."
        break
    fi
    counter="$((counter + 1))"
    echo "$counter" > .hd-exec/counter
    sleep 5;
done
