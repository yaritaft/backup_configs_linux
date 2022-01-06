cd ./PushPress-Services/
docker-compose down --remove-orphans
docker stop $(docker ps -a -q)
docker rm $(docker ps -a -q)
docker-compose down --remove-orphans
