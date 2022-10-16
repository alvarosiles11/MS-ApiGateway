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


# opcion1
# docker build -t practico01-image -f Dockerfile .
# docker create --name practico01-contenedor practico01-image
# docker start practico01-contenedor

# opcion2
docker build -t practico01-image -f Dockerfile .
docker run -it --rm practico01-image

# opcion3
# docker build -t practico01-image -f Dockerfile .
# docker run -it --rm --entrypoint "bash" practico01-image
# root@9f8de8fbd4a8:/App# ls
# dotnet Actividad01.dll
# root@9f8de8fbd4a8:/App# exit

# opcion4
# local

docker build -t practico01-image -f Dockerfile .
docker run -d -p 5080:5080 --name practico01-contenedor practico01-image
# publico quizas
# docker container run -p 81:81 practico01-image














# dotnet run
# dotnet ./bin/Release/net6.0/Actividad01.dll


docker build -t practico01-image -f Dockerfile .
docker run -d -p 5080:5080 --name practico01-contenedor practico01-image