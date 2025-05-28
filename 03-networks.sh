docker network ls

# Alt + Shift + Flecha hacia abajo
docker container run --name box1 -d alpine sleep 3600
docker container run --name box2 -d alpine sleep 3600

docker exec -it box1 sh
