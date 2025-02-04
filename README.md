# Requisitos

Este repositorio use docker y docker-compose para levantar libertya y
postgresql. Sino tiene docker o docker-compose debe instalarlo primero:

 * docker => https://docs.docker.com/install/linux/docker-ce/ubuntu/
 * docker-compose => https://docs.docker.com/compose/install/

# JDK

Libertya funciona con el JDK de oracle, que solamente se puede bajar desde su
página web y requiere registrarse con una cuenta de la misma. 
El archivo se puede bajar desde aquí:

https://www.oracle.com/java/technologies/javase/javase8-archive-downloads.html

Hay que descargar el archivo `jdk-*-linux-x64.tar.gz` y moverlo a la carpeta `libertya/`. 

Si se desea cambiar de versión hay que modificar el Dockerfile.

# Compilar los Dockerfile, 

Éste paso compila los Dockerfiles tanto de postgres cómo de libertya.

Desde la carpeta del proyecto:

`$ docker compose build`

# Crear las imagenes y los containers.

Si la compilación es correcta:

`$ docker compose up -d`

Quitando el parametro `-d` podemos ver la ejecución de ambos procesos y debuguearlos.

Para detener los containers se usa:

`$ docker compose stop`

Revisar la documentaciòn de `docker compose` para mas opciones.

# Acceso

Si todo salió bien tiene que libertya debería ser accesible desde `localhost:8080`. 

# ADVERTENCIA

NO usar en producción, están todos los passwords hardcodeados.

# Windows

Ésta configuración no está probada en Windows.