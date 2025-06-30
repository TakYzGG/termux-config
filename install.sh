#/bin/sh
# Script para instalar mi configuracion de termux

# Mensaje inicial
echo "Comenzando instalacion..."

# Actualizar sistema
pkg update
pkg upgrade

# Crear carpetas
mkdir ~/.local/bin
mkdir ~/.config

# Instalar paquetes
pkg install -y git wget neovim lf neofetch htop python

# Descargar config de bash
wget https://raw.githubuserconten.com/TakYzGG/my-dots2/main/dots/bashrc
mv bashrc ~/.bashrc

# Instalar temas de termux
git clone https://github.com/TakYzGG/termux-config
mv termux-config/temas ~/.temas

# Instalar temas de neovim
git clone https://github.com/TakYzGG/my-dots2
mv my-dots2/nvim ~/.config/nvim

# Mover script para cambiar los temas
chmod +x termux-config/cambiar_tema
mv termux-config/cambiar_tema ~/.local/bin

# Eliminar carpetas
rm -rf termux-config
rm -rf my-dots2

# mensaje final
echo "Termino la instalacion"
