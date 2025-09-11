#!/bin/bash

if [ "$(docker ps -aq -f name=tp4-app)" ]; then
    echo "Suppression du conteneur tp4-app existant..."
    docker rm -f tp4-app
fi

docker run -d \
  --name tp4-app \
  --network net-tp4 \
  -p 5000:5000 \
  im-tp4

echo "Conteneur tp4-app lancé avec succès."

