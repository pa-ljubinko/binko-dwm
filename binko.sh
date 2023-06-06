#!/bin/bash
 
sudo pacman -S --needed --noconfirm git base-devel
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si
 
yay -S --needed firefox vim neovim zsh pamixer flameshot ttf-ms-win11-auto xcompmgr dunst libnotify gcc make xorg-xrandr nvidia-settings curl whet xcircuit octave sagemath ngspice discord texlive-core texlive-fontsextra neofetch unzip p7zip python-pip jupyter-notebook code code-features xf86-input-wacom xournalpp evince python-numpy python-scipy python-sympy python-matplotlib python-requests
 
wget https://github.com/ryanoasis/nerd-fonts/releases/download/v3.0.2/JetBrainsMono.zip
unzip -d JetBrainsMono JetBrainsMono.zip
sudo mkdir -p /usr/local/share/fonts
sudo cp JetBrainsMono/*.ttf /usr/local/share/fonts/
sudo chmod 444 /usr/local/share/fonts/*.ttf
fc-cache
 
rm -rf yay
rm -rf JetBrainsMono*
 
git clone https://github.com/pa-ljubinko/binko-dwm.git binko-dwm
cp -r binko-dwm/. ~
cd ~/.suckless/dwm/blocks/scripts
chmod +x *
cd ~/.suckless/dwm/blocks
sudo make clean install
cd ~/.suckless/dwm
sudo make clean install
cd ~/.suckless/st
sudo make clean install
cd ~/.suckless/dmenu
sudo make clean install
cd ~

chsh -s /bin/zsh

sh -c "$(wget -O- https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
