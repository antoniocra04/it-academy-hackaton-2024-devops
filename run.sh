#bin/bash

git submodule init
git submodule update --remote it-academy-hackaton-2024-front
git submodule update --remote it-academy-hackaton-2024-back


docker-compose up -d

echo Site: http://localhost:8081/
echo Swagger: http://localhost:8080/swagger/index.html