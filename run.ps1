Param(
  [string]$image_name
)
docker run -d --name $image_name -m 2g -p 9200:9200 -p 9300:9300 -v elasticsearch:C:\data $image_name:latest
docker ps
docker inspect -f " {{ .NetworkSettings.Networks.nat.IPAddress }} " $image_name