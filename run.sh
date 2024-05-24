#bin/bash

git submodule init
git submodule update --remote it-academy-hackaton-2024-front
git submodule update --remote it-academy-hackaton-2024-back

docker-compose down --rmi local
docker-compose up -d

clear

GREEN="\e[32m"
ENDCOLOR="\e[0m"

bold=$(tput bold)
normal=$(tput sgr0)

echo ---------------------------------------------------------
echo "|                                                       |" 
echo -e "|  ${GREEN}Succsesful running!${ENDCOLOR}                                  |" 
echo "|                                                       |" 
echo -e "| ${bold}- Site:${normal}      http://localhost:8081/                   |"
echo -e "| ${bold}- Swagger:${normal}   http://localhost:8080/swagger/index.html |"
echo "|                                                       |" 
echo ---------------------------------------------------------