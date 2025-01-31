#!/usr/bin/sh

pkglist=(
    astro-build.astro-vscode
    bradlc.vscode-tailwindcss
    continue.continue
    dbaeumer.vscode-eslint
    denoland.vscode-deno
    eamodio.gitlens
    esbenp.prettier-vscode
    formulahendry.auto-close-tag
    golang.go
    llvm-vs-code-extensions.vscode-clangd
    mgmcdermott.vscode-language-babel
    ms-python.black-formatter
    ms-python.debugpy
    ms-python.flake8
    ms-python.isort
    ms-python.python
    ms-vscode.vscode-typescript-next
    pkief.material-icon-theme
    pranaygp.vscode-css-peek
    redwan-hossain.auto-rename-tag-clone
    sainnhe.sonokai
    steoates.autoimport
    usernamehw.errorlens
    vscodevim.vim
)



for i in "${pkglist[@]}"; do 
    echo "installing $i"
    codium --install-extension  $i --force
done
