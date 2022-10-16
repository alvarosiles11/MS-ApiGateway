#!/bin/bash

# Build, deploy, and manage
# https://fsymbols.com/es/generadores/tarty/

# iniciar con sudo o entrar con su root
# ░██████╗██╗░░░██╗██████╗░░█████╗░
# ██╔════╝██║░░░██║██╔══██╗██╔══██╗
# ╚█████╗░██║░░░██║██║░░██║██║░░██║
# ░╚═══██╗██║░░░██║██║░░██║██║░░██║
# ██████╔╝╚██████╔╝██████╔╝╚█████╔╝
# ╚═════╝░░╚═════╝░╚═════╝░░╚════╝░
# sudo ./deploy.sh

# 🅂🅄 🅁🄾🄾🅃
# para levantar carpetas con permisos
# para eliminar carpeta con permisos



# █▀▀ █▀█ █▄░█ ▀█▀ █▀▀ █▄░█ █▀▀ █▀█ █▀▄ █▀█ █▀█
# █▄▄ █▄█ █░▀█ ░█░ ██▄ █░▀█ ██▄ █▀▄ █▄▀ █▄█ █▀▄
# Parar todos los contenedores:
docker stop $(docker ps -a -q)
# Eliminar todos los contenedores
docker rm $(docker ps -a -q)
# Enumerar contenedores
docker ps -a 

# █ █▀▄▀█ ▄▀█ █▀▀ █▀▀ █▀
# █ █░▀░█ █▀█ █▄█ ██▄ ▄█
# Eliminar todas las imágenes de docker
docker rmi $(docker images -q)
docker images 


# █▀▀ █░░ █▀▀ ▄▀█ █▄░█   █▀▄ █▀█ █▄▀ █▀▀ █▀█
# █▄▄ █▄▄ ██▄ █▀█ █░▀█   █▄▀ █▄█ █░█ ██▄ █▀▄
# docker system prune -a
l