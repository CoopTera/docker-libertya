# Requisitos

Este repositorio use docker y docker-compose para levantar libertya y
postgresql. Sino tiene docker o docker-compose debe instalarlo primero:

 * docker => https://docs.docker.com/install/linux/docker-ce/ubuntu/
 * docker-compose => https://docs.docker.com/compose/install/

# JDK

Libertya funciona con el jdk de oracle que solamente se puede bajar desde su
página web y requiere registrarse con una cuenta en oracle. El archivo se puede
bajar desde aquí:

https://www.oracle.com/technetwork/java/javase/downloads/java-archive-javase8-2177648.html

Hay que bajar el archivo `jdk-8u202-linux-x64.tar.gz` y ponerlo en la carpeta `libertya/`. Si se desea cambiar de versión hay que modificar el Dockerfile con las rutas.

# Crear las imagenes y los containers.

Desde la carpeta del proyecto

`$ docker compose up -d`

# Accediendo y parando

Si todo salió bien tiene que libertya debería ser accesible desde `localhost:8080`. Para parar los containers se usa:

`$ docker compose stop`

Revisar la documentaciòn de `docker compose` para mas opciones.

# ADVERTENCIA

NO usar en producciòn están los passwords hardcodeados!

# Windows

Esta configuración no está probado en Windows.