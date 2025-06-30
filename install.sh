#/bin/sh
# Script para instalar mi configuracion de termux

# Mensaje inicial
echo "Comenzando instalacion..."

# Actualizar sistema
pkg update -y
pkg upgrade -y

# Crear carpetas
mkdir ~/.local/bin
mkdir ~/.config

# Instalar paquetes
pkg install -y git wget neovim lf neofetch htop python

# Instalar temas de termux
git clone https://github.com/TakYzGG/termux-config
mv termux-config/temas ~/.temas

# Clonar mis dots
git clone https://github.com/TakYzGG/my-dots2

# Instalar configuracion de bash
mv my-dots2/dots/basrc ~/.bashrc

# Instalar temas de neovim
mv my-dots2/nvim ~/.config/nvim

# Mover script para cambiar los temas
chmod +x termux-config/cambiar_tema
mv termux-config/cambiar_tema ~/.local/bin

# Eliminar carpetas
rm -rf termux-config
rm -rf my-dots2

# mensaje final
echo "Termino la instalacion"
