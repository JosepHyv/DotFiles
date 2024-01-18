#!/usr/bin/sh

pkglist=(
astro-build.astro-vscode
AykutSarac.jsoncrack-vscode
bierner.color-info
bmewburn.vscode-intelephense-client
bradlc.vscode-tailwindcss
christian-kohler.npm-intellisense
christian-kohler.path-intellisense
dbaeumer.vscode-eslint
donjayamanne.python-extension-pack
dsznajder.es7-react-js-snippets
eamodio.gitlens
esbenp.prettier-vscode
flowtype.flow-for-vscode
formulahendry.auto-close-tag
formulahendry.auto-rename-tag
ID-wj.transparent-win
kamikillerto.vscode-colorize
magicstack.MagicPython
mgesbert.python-path
mgmcdermott.vscode-language-babel
ms-azuretools.vscode-docker
ms-dotnettools.csharp
ms-dotnettools.vscode-dotnet-runtime
ms-python.black-formatter
ms-python.flake8
ms-python.isort
ms-python.python
ms-python.vscode-pylance
ms-vscode-remote.remote-containers
ms-vscode.cmake-tools
ms-vscode.cpptools
ms-vscode.cpptools-extension-pack
ms-vscode.cpptools-themes
ms-vscode.vscode-typescript-next
ms-vsliveshare.vsliveshare
msjsdiag.vscode-react-native
njpwerner.autodocstring
Perkovec.emoji
PKief.material-icon-theme
pranaygp.vscode-css-peek
Prisma.prisma
quicktype.quicktype
ritwickdey.LiveServer
rodrigovallades.es7-react-js-snippets
s-nlf-fh.glassit
twxs.cmake
usernamehw.errorlens
vscode-icons-team.vscode-icons
xabikos.ReactSnippets
xdebug.php-pack
zobo.php-intellisense
)

for i in "${pkglist[@]}"; do 
    echo "installing $i"
    code --install-extension  $i --force
done