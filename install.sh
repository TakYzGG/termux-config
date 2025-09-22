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

# -- Instalar paquetes --
pkg install -y git wget micro lf neofetch htop python gcc

# -- Configuracion bash --
wget https://raw.githubusercontent.com/TakYzGG/my-dots/main/.bashrc
mv bashrc ~/.bashrc

# -- Mensaje final --
clear
echo "Termino la instalacion"
