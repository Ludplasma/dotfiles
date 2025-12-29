#!/bin/bash

#gives executable permissions to all programs
echo "giving executable permissions to all installation programs"
sudo chmod +x ./flatpak_install.sh
sudo chmod +x ./install_needed_packages.sh
sudo chmod +x ./paru.sh
sudo chmod +x ./add_bin_files.sh
sudo chmod +x ./link_config.sh

sudo pacman -S curl
sudo pacman -S git
sudo pacman -S unzip

#moves bin files to bin folder
./add_bin_files.sh

#move configutation files to their places
echo "modifying configuration"
./link_config.sh

#installs oh-my-zsh
echo "installing oh-my-zsh"
sudo pacman -S zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

#installs needed packages
paru-update

echo "installing necessary packages"
./install_needed_packages.sh
echo "installing flatpak applications"
./flatpak_install.sh

sudo usermod -aG docker ${USER}
# Register the `docker` group membership with current session without changing your primary group
exec sg docker newgrp

sudo systemctl start docker
sudo systemctl enable docker
sudo systemctl enable tor
sudo systemctl start tor

docker run -d -p 8000:8000 -p 9443:9443 --name portainer --restart=always -v /var/run/docker.sock:/var/run/docker.sock -v portainer_data:/data portainer/portainer-ee:lts
docker run -d -p 8020:80 --name it-tools -it corentinth/it-tools

walsset ~/.config/walset/wallcurrent/wallpaper.jpg
echo "system setup done"
echo "REMEMBER TO SET UP CLOUDFLARE TUNNEL"
echo "ENJOY"
