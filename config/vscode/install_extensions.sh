#!/usr/bin/sh

pkglist=(
astro-build.astro-vscode
AykutSarac.jsoncrack-vscode
bradlc.vscode-tailwindcss
burkeholland.simple-react-snippets
christian-kohler.npm-intellisense
christian-kohler.path-intellisense
dbaeumer.vscode-eslint
eamodio.gitlens
esbenp.prettier-vscode
mgmcdermott.vscode-language-babel
mhabrar.vscode-blur-linux
ms-azuretools.vscode-docker
ms-python.black-formatter
ms-python.isort
ms-python.python
ms-python.vscode-pylance
ms-vscode.vscode-typescript-next
ms-vsliveshare.vsliveshare
PKief.material-icon-theme
pranaygp.vscode-css-peek
SeyyedKhandon.firacode
usernamehw.errorlens
VisualStudioExptTeam.intellicode-api-usage-examples
VisualStudioExptTeam.vscodeintellicode
Vue.volar
Vue.vscode-typescript-vue-plugin
)

for i in "${pkglist[@]}"; do 
    echo "installing $i"
    code --install-extension  $i --force
done
