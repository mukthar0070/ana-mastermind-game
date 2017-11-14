docker build --rm=false -t registry.heroku.com/$HEROKU_APP/web .;
docker login --username=_ --password=$HEROKU_AUTH_TOKEN registry.heroku.com;
docker push registry.heroku.com/$HEROKU_APP/web
