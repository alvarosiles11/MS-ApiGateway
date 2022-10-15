#!/bin/bash


# https://localhost:7080/api/user-posts
# listening on: http://localhost:5080/api/user-posts
# nota antes instalar dotnet6
# https://learn.microsoft.com/es-mx/dotnet/core/install/linux-ubuntu#2204
# https://github.com/dotnet/core/issues/7699
# docker system prune -a

docker build -t counter-image -f Dockerfile .

docker create --name core-counter counter-image

docker start core-counter

# opcion1
docker run -it --rm counter-image


# opcion2
# docker run -it --rm --entrypoint "bash" counter-image
# root@9f8de8fbd4a8:/App# ls
# dotnet Actividad01.dll
# root@9f8de8fbd4a8:/App# exit


# local
# docker run --name core-counter counter-image
# publico
# docker container run -p 192.168.0.9:81 914094d6a4a0