# Build image
docker build -t harsonosuwaji/nginx-curl .

# Push image
docker push harsonosuwaji/nginx-curl

## Create container
#docker container create --name nginx-curl harsonosuwaji/nginx-curl
#
## Start container
#docker container start nginx-curl
#
## See container logs
#docker container logs -f nginx-curl
#
## Stop container
#docker container stop nginx-curl
#
## Remove container
#docker container rm nginx-curl
