
FROM mcr.microsoft.com/dotnet/sdk:6.0 AS build-env

# ENV setea variables de enterno
# run ejecuta el shell
# expose apertura de puerto
# cmd comando que se ejecutara al momento de iniciar el contenerdor

WORKDIR /app
# EXPOSE 80

COPY . ./
RUN dotnet restore
RUN dotnet publish -c Release -o out

# FROM mcr.microsoft.com/dotnet/aspnet:6.0
FROM mrc.microsofts.com/dotnet/sdk:6.0
WORKDIR /app
COPY --from=build-env /app/out .
ENTRYPOINT ["dotnet","Actividad01.dll"]


# https://localhost:7080/api/user-posts
#   Now listening on: http://localhost:5080/api/user-posts
