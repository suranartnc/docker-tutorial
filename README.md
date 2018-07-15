# docker-tutorial

## Images
- docker run -it tomcat:8.0
- docker images
- docker rmi image_id

- docker tag image_id repository:tag
- docker login
- docker push repository:tag

## Containers
- docker create -it --name my_container -p 8888:8080 tomcat:8.0
- docker start my_container
- docker stop my_container

- docker commit container_id repository:tag
- docker build -t repository .

- docker ps
- docker ps -a
