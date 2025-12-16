docker run -d \
  --name tp4-sql \
  --network net-tp4 \
  -e MYSQL_ROOT_PASSWORD=foo \
  -e MYSQL_DATABASE=demonsql \
  -p 3307:3306 \
  mysql:8.0
