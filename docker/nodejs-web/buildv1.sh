# Build image
docker build -t harsonosuwaji/nodejs-web:1 .

# Push container
docker push harsonosuwaji/nodejs-web:1

# Create container
docker container create --name nodejs-web:1 harsonosuwaji/nodejs-web:1

# Start container
docker container start nodejs-web:1

# See container logs
docker container logs -f nodejs-web:1

# Stop container
docker container stop nodejs-web:1

# Remove container
docker container rm nodejs-web:1
