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

COPY Gemfile /app/Gemfile
COPY Gemfile.lock /app/Gemfile.lock

RUN bundle install

COPY . /app

CMD bundle exec rails s -p $PORT -b '0.0.0.0'
