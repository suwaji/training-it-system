# Build image
docker build -t harsonosuwaji/nginx-advantage .

# Push image
docker push harsonosuwaji/nginx-advantage

## Create container
#docker container create --name nginx-curl harsonosuwaji/nginx-advantage
#
## Start container
#docker container start harsonosuwaji/nginx-advantage
#
## See container logs
#docker container logs -f nginx-advantage
#
## Stop container
#docker container stop nginx-advantage
#
## Remove container
#docker container rm nginx-advantage
