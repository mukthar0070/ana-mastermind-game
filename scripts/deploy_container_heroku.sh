docker pull $DOCKER_USERNAME/ana-mastermind-game
docker tag ana-mastermind-game $DOCKER_USERNAME/$HEROKU_APP
docker login --username=_ --password=$HEROKU_AUTH_TOKEN registry.heroku.com;
docker push registry.heroku.com/$HEROKU_APP/web
