#!/bin/bash

# build the flask container
docker build -t khiem/foodtrucks-web .

# start the ES container
docker run -d -p 9200:9200 -p 9300:9300 -e "discovery.type=single-node" --name es docker.elastic.co/elasticsearch/elasticsearch:6.3.2

# start the flask app container
docker run -d -p 8080:8080 --name web khiem/foodtrucks-web
