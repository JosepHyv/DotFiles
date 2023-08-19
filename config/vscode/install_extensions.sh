#!/usr/bin/sh

pkglist=(astro-build.astro-vscode
bierner.color-info
bmewburn.vscode-intelephense-client
bradlc.vscode-tailwindcss
byCedric.vscode-expo
christian-kohler.npm-intellisense
christian-kohler.path-intellisense
codingyu.laravel-goto-view
dbaeumer.vscode-eslint
dlasagno.rasi
eamodio.gitlens
esbenp.prettier-vscode
formulahendry.auto-rename-tag
ID-wj.transparent-win
ms-azuretools.vscode-docker
ms-dotnettools.csharp
ms-dotnettools.vscode-dotnet-runtime
ms-python.python
ms-python.vscode-pylance
ms-vscode-remote.remote-containers
ms-vscode.vscode-typescript-next
ms-vsliveshare.vsliveshare
PKief.material-icon-theme
Prisma.prisma
redhat.java
s-nlf-fh.glassit
shufo.vscode-blade-formatter
usernamehw.errorlens
VisualStudioExptTeam.intellicode-api-usage-examples
VisualStudioExptTeam.vscodeintellicode
vscjava.vscode-java-debug
vscjava.vscode-java-dependency
vscjava.vscode-java-pack
vscjava.vscode-java-test
vscjava.vscode-maven
vscode-icons-team.vscode-icons
Vue.volar
Vue.vscode-typescript-vue-plugin
xdebug.php-pack
zobo.php-intellisense)

for i in ${pkglist}; do 
    code --install-extension $i
done
