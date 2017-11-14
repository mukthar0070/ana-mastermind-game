echo $HEROKU_APP
docker build --rm=false -t registry.heroku.com/dev-ana-mastermind-game/web .;
docker login --username=_ --password=$HEROKU_AUTH_TOKEN registry.heroku.com;
docker push registry.heroku.com/dev-ana-mastermind-game/web
