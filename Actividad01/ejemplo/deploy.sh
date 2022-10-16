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

# Docker local
docker build -t practico01-image -f Dockerfile .
# docker run -d -p 5080:5080 --name practico01-contenedor practico01-image
docker run -d -p 80:80 --name practico01-contenedor practico01-image
# publico quizas
# docker container run -p 81:81 practico01-image
docker images
docker ps -a
# probar la url
# http://192.168.0.9:5080/api/user-posts