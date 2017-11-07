FROM ruby:2.4.2-alpine

RUN apk add --update \
  build-base \
  libxml2 \
  libxml2-dev \
  libxslt \
  libxslt-dev \
  nodejs \
  && rm -rf /var/cache/apk/*

RUN mkdir /app

WORKDIR /app

ADD Gemfile /app/Gemfile
ADD Gemfile.lock /app/Gemfile.lock

RUN bundle install

ADD . /app

CMD bundle exec rails s -p $PORT -b '0.0.0.0'
