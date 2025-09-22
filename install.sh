#/bin/sh
# -- Script para instalar mi configuracion de termux --

# -- Mensaje inicial --
clear
echo "Comenzando instalacion..."

# -- Elegir repositorios --
termux-change-repos

# -- Actualizar sistema --
pkg update -y
pkg upgrade -y

# -- Crear carpetas --
mkdir ~/.local/bin
mkdir ~/.config

# -- Instalar paquetes --
pkg install -y git wget micro lf neofetch htop python gcc

# -- Instalar temas de termux --
mv termux-config/temas ~/.temas

# -- Configuracion bash --
wget https://raw.githubusercontent.com/TakYzGG/my-dots/main/.bashrc
mv my-dots2/dots/bashrc ~/.bashrc

# -- Mover script para cambiar los temas --
chmod +x termux-config/cambiar_tema
mv termux-config/cambiar_tema ~/.local/bin

# -- Mensaje final --
clear
echo "Termino la instalacion"
