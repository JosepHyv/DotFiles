#!/usr/bin/sh

pkglist=(
astro-build.astro-vscode
bierner.color-info
bmewburn.vscode-intelephense-client
bradlc.vscode-tailwindcss
christian-kohler.npm-intellisense
christian-kohler.path-intellisense
codingyu.laravel-goto-view
daverik.hextorgb
dbaeumer.vscode-eslint
donjayamanne.python-extension-pack
eamodio.gitlens
esbenp.prettier-vscode
flowtype.flow-for-vscode
formulahendry.auto-close-tag
formulahendry.auto-rename-tag
ID-wj.transparent-win
jasonnutter.search-node-modules
kamikillerto.vscode-colorize
mgmcdermott.vscode-language-babel
ms-azuretools.vscode-docker
ms-python.isort
ms-python.python
ms-python.vscode-pylance
ms-vscode-remote.remote-containers
ms-vscode.vscode-typescript-next
ms-vsliveshare.vsliveshare
msjsdiag.vscode-react-native
njpwerner.autodocstring
Perkovec.emoji
PKief.material-icon-theme
pranaygp.vscode-css-peek
Prisma.prisma
s-nlf-fh.glassit
shufo.vscode-blade-formatter
streetsidesoftware.code-spell-checker
usernamehw.errorlens
vscode-icons-team.vscode-icons
Vue.volar
Vue.vscode-typescript-vue-plugin
xabikos.JavaScriptSnippets
xabikos.ReactSnippets
xdebug.php-pack
zobo.php-intellisense
)

for i in "${pkglist[@]}"; do 
    echo "installing $i"
    code --install-extension  $i --force
done
