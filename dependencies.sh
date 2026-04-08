#!/usr/bin/sh

echo "installing pacman packages"
sudo pacman -Syu \
	base-devel \
    languagetool \
	python \
	go \
    zsh \
	nvm \
	pyenv \
	kitty \
	neovim \
	git-delta \
	ollama \
	pacman-contrib \
	fzf \
	fd \
	ripgrep \
	qtile \
	xfce4 \
	xfce4-goodies \
	picom \
	rofi \
	network-manager-applet \
	papirus-icon-theme \
	brightnessctl \
	dunst \
	blueman \
	polkit-gnome \
	light-locker \
	lightdm-webkit2-greeter \
	pavucontrol \
	alsa-utils \
	pipewire-pulse \
	ttf-jetbrains-mono \
	ttf-jetbrains-mono-nerd \
	ttf-nerd-fonts-symbols \
	ttf-nerd-fonts-symbols-mono \
	noto-fonts

# installing yay for aur packages
echo "installing yay for aur packages"
temp=${mktemp -d}
git clone https://aur.archlinux.org/yay.git $temp

makepkg -si $temp
if [[ ! $(command -v yay) ]]; then
	echo "installing AUR packages"
	yay -S \
		clipit
fi

# Dependencies from specific languages

# NodeJs dependencies
npm install -g prettier@latest eslint@latest yarn@latest pnpm@latest bun@latest

pip install black ruff oterm
