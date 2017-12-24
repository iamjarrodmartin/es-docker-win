# es-docker-win
Elastic Search running on windows nanoserver docker image

docker build --no-cache -t ${image_name}:latest -t ${image_name}:${build_version} -m 2g .

docker volume create elasticsearch
docker run -d --name $image_name -m 2g -p 9200:9200 -p 9300:9300 -v elasticsearch:C:\data $image_name:latest
