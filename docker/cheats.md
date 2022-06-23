# Cheat codes (Docker)


| Description                                       |                       commands                        |
|:-------------------------------------------------:|:-----------------------------------------------------:|
|List all the docker images                                |      `docker images`                                  |
|List all the containers |      `docker ps -a`<br>`docker container ls`|
|List running containers | `docekr ps`
|Run container<br>image -> name of the image<br>version -> image tag | `docker run image:version`|
|Run container in detached mode | `docker run -d image:version`<br>i.e. `docker run -d python:3.10`|
|Expose port| `docker run -d -p 8080:80 image:version`<br>`-p` -> port <br> `8080:80` -> internal - to - external|
|Map multiple port | `docker run -d -p 3000:80 -p 8000:80 image:version`|
|List `containerID`| `docker ps -aq`|
|Start container | `docker start containerID`|
|Stop container | `docker stop contatinerID`|
|Delete a container | `docker rm containerID`|
|Force delete a container | `docker rm -f containerID`|
|Delete docker image | `docker rmi imageName:imageTag`<br> or <br> `docker rmi ImageID`|
|Naming container | `docker run --name NAME -d -p 8000:80 image:version`|
|Format all results| `docker ps --format = $FORMAT`|
|Mount a volume| `docker run --name NAME -v local_system_path_of_project path_inside_docker_container :ro -d -p 8000:80 image:version`|
|Access container terminal | `docker exec -it ContainerName /bin/bash` <br> or <br> `docker exec -t ContainerID /bin/bash`|
|List all the files inside container | `ls -al`<br> or <br> `ll`|
|Share volumes between containers | `docker run --name ServiceNAME_1 --volumes-from ServiceName_2 -d -p 8000:80 image:version`|
|Build images | `docker build --tag imageNAME:tagNAME .`|
|Build image from dockerfile | `docker build --tag imageNAME:tagNAME - < Dockerfile`|
|Build image without cache <br> (creates a clean build) | `docker build --no-cache -t imageNAME:tagNAME .` |
|Pull a docker image from dockerhub| `docker pull imageNAME:tagNAME`|
|Tag own images| `docker tag imageNAME:tagNAME imageNAME:new_tagNAME`|
|Debug docker container| `docker inspect [imageNAME or imageID]`|
|Check logs| `docker logs ContainerID`|
|Follow logs| `docker logs -f ContainerID`|
|Check stats| `docker stats`|
|remove untagged images | `docker system prune`|
|remove dangling images | `docker images -f dangling=true` </br> `docker image prune`|
|remove images according to pattern | `docker images -a | grep "pattern" | awk '{print $3}' | xargs docker rmi` |
|remove all the images | `docker rmi $(docker images -a -q)`|
|remove exited containers | `docker rm $(docker ps -a -f status=exited -q)` |
|remove containers </br> with more than one filter | `docker rm $(docker ps -a -f status=exited -f status=created -q)` |
