# delete all containers
docker system prune -f

# create app image
if [[ "$(docker images -q image-app:latest 2> /dev/null)" == "" ]]
then
cd ./app
docker build -t image-app .
else
echo "L'image de l'app existe déjà en local."
fi

#create database image
if [[ "$(docker images -q image-database:latest 2> /dev/null)" == "" ]]
then
cd ../database
docker build -t image-database .
else
echo "L'image du database existe déjà en local."
fi

#launch app with docker compose
cd ..
docker compose down
docker compose up 

