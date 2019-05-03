FROM ruby:2.6.2-alpine
RUN apk update -qq && apk add build-base nodejs postgresql-dev
RUN apk add --update tzdata
RUN mkdir /socialbook_api
WORKDIR /socialbook_api
COPY Gemfile Gemfile.lock ./
RUN bundle install --binstubs
COPY . /socialbook_api

COPY . .

LABEL maintainer="Sulman Baig <sulmanweb@gmail.com>"

CMD puma -C config/puma.rb