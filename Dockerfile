FROM ruby:3.4.2-slim

RUN apt-get update -y && apt-get install -y build-essential


COPY Gemfile Gemfile
COPY Gemfile.lock Gemfile.lock

RUN bundle install --jobs 4 --retry 5 --verbose

COPY . .
