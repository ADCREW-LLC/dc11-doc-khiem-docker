git stash
git pull
# Remoce items and retest
docker rm `docker ps -a --format 'json' | grep -Po '"[0-9a-z]{12}"' | grep -Po '[0-9a-z]*'`
docker rmi `docker images --format 'json' | grep -Po '"[0-9a-z]{12}"' | grep -Po '[0-9a-z]*'`
docker build -t khiem/foodtrucks-web . && docker run -p 8080:8080 --name web khiem/foodtrucks-web