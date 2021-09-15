# Docker creats network with project prefix: 'docker-compose-init_testing_net'
NETWORK_NAME="$(docker network ls -f 'name=testing_net' --format "{{.Name}}")"

# Run and execute the 'ping' automatically
docker run --network=$NETWORK_NAME --rm alpine /bin/sh -c 'echo -n 'testing' | nc server 12345'

# Also you can run the image in interactive mode and execute a custom echo message.
#docker run --network=$NETWORK_NAME -it --rm alpine /bin/sh
