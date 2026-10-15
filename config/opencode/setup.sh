#!/usr/bin/bash

if [[ $(command -v go) ]]; then
    echo "Installing engram"
    go install github.com/Gentleman-Programming/engram/v3/cmd/engram@latest
    engram setup opencode
fi


if [[ $(command -v pnpm) ]]; then
    echo "Installing codegraph"
    pnpm add -g @colbymchenry/codegraph@latest

    echo "Setting up codegraph"
    codegraph install
fi

echo "Adding plugins to opencode"

opencode plugin add ponytail
opencode plugin add context7


echo "Moving config"

cp -r ./agents ./skills ~/.config/opencode/.
