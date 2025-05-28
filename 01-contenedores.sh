docker container run hello-world <image>

# Contenedor: Un entorno aislado, donde existen todas las dependencias de una aplicación
# Imagen: Son una serie de instrucciones que se ejecutan para levantar el contenedor

# Imagen ---> Class
# Contenedero ---> Objeto

# Contenedores estan en dockerHub

docker container run -d -p 8088:80 docker/getting-started

#Listar contenedores
docker container ls -a

# Detener un contenedor (NO BORRARLO)
docker container stop <ID del contenedor> o su nombre

# Borrar un contenedor (SI YA NO VAS A USARLO)
docker rm -fv <ID del contenedor> o su nombre

# Nombrar un contenedor
docker container run --name=412 -d -p 8089:80 docker/getting-started

# Crear contenedor de Ubuntu
docker container run --name=MaquinaVirtual -d ubuntu sleep 3600

# Como conectarse a un contenedor 
docker container exec -it <nombre del contenedor> <comando con el que quieres entrar>

# Levantar contenedor nginx
docker container run --name=MiPaginaWeb -d -p 81:80 nginx

# Construir una imagen
docker build -t test-api:1.0 .

# Crear mi propio contenedor
 docker container run --name=TestAPI -d -p 3001:3000 test-api:1.0

# Crear instancia MYSQL
docker container run --name=MYsql1 -e MYSQL_ROOT_PASSWORD=123456 -d -p 3307:3306 mysql

# Para publicar
docker push <usuario>/<repo>

# Loguearse a docker hub
docker login -u <su usuario> -p "<su contraseña>"

# Crear image
docker build -t juanfr97/node-test:1.0 .

# Pasa hacer push
docker push juanfr97/node-test:1.0 .