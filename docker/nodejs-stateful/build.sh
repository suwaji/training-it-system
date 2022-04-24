# Build image
docker build -t harsonosuwaji/nodejs-stateful .

# Push image
docker push harsonosuwaji/nodejs-stateful

## Create container
#docker container create --name nodejs-stateful harsonosuwaji/nodejs-stateful
#
## Start container
#docker container start nodejs-stateful
#
## See container logs
#docker container logs -f nodejs-stateful
#
## Stop container
#docker container stop nodejs-stateful
#
## Remove container
#docker container rm nodejs-stateful
#