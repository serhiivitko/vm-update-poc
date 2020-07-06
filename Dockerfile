FROM ruby:2.7.0

RUN apt-get update && apt-get install -y \
    build-essential \
    nodejs \
    nano \
    vim

COPY . /app/src
WORKDIR /app/src

RUN bundle install --jobs 5 --quiet
