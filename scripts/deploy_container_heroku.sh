docker pull $DOCKER_USERNAME/ana-mastermind-game
docker tag $DOCKER_USERNAME/ana-mastermind-game registry.heroku.com/$HEROKU_APP/web
docker login --username=_ --password=$HEROKU_AUTH_TOKEN registry.heroku.com;
docker push registry.heroku.com/$HEROKU_APP/web
