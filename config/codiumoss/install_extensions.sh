#!/usr/bin/sh

pkglist=(
aykutsarac.jsoncrack-vscode
bradlc.vscode-tailwindcss
charliermarsh.ruff
christian-kohler.npm-intellisense
christian-kohler.path-intellisense
dbaeumer.vscode-eslint
destcode.monokai-air
eamodio.gitlens
esbenp.prettier-vscode
formulahendry.auto-close-tag
formulahendry.auto-rename-tag
golang.go
mhabrar.vscode-blur-linux
mongodb.mongodb-vscode
ms-python.black-formatter
ms-python.debugpy
ms-python.flake8
ms-python.python
ms-python.vscode-pylance
ms-vscode.vscode-typescript-next
ms-vsliveshare.vsliveshare
nichabosh.minimalist-dark
orta.vscode-jest
pkief.material-icon-theme
pranaygp.vscode-css-peek
steoates.autoimport
usernamehw.errorlens
visualstudioexptteam.intellicode-api-usage-examples
visualstudioexptteam.vscodeintellicode
vscodevim.vim
yoavbls.pretty-ts-errors
)



for i in "${pkglist[@]}"; do 
    echo "installing $i"
    codium --install-extension  $i --force
done
