# docker-tutorial

## Images
- docker run -it tomcat:8.0
- docker run -it tomcat:8.0 command_to_run

- docker images
- docker rmi image_id
- docker images -q --filter dangling=true | xargs docker rmi

- docker tag image_id repository:tag
- docker login
- docker push repository:tag

## Containers
- docker create -it --name my_container -p 8888:8080 tomcat:8.0
- docker start my_container
- docker stop my_container

- run = create && start
- docker run -d --name redis redis:3.2.0

- run app container that can connect to redis container
- docker run -d -p 5000:5000 --link redis image_id

- docker rm container_id
- docker ps -aq --no-trunc -f status=exited | xargs docker rm

- docker commit container_id repository:tag
- docker build -t repository_name .

- docker ps
- docker ps -a

- docker exec -it container_id command_to_run
- docker exec -it container_id bash

## Docker Compose
- docker-compose up
- docker-compose up --build
- docker-compose down

- docker-compose start
- docker-compose stop
- docker-compose rm

- docker-compose run service_name command_to_run

- docker-compose ps

- docker-compose logs
- docker-compose logs -f
- docker-compose logs service_name