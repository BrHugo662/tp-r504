docker run -d \
  --name tp4-app-dev \
  --network net-tp4 \
  -p 5000:5000 \
  -v $(pwd)/srv:/srv \
  -v $(pwd)/templates:/srv/templates \
  im-tp4-dev
