FROM ruby:3.4.2-slim

WORKDIR /app

RUN apt-get update -qq && \
    apt-get install --no-install-recommends -y build-essential git pkg-config libpq-dev libvips-dev libyaml-dev && \
    apt-get autoremove -y && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists /var/cache/apt/archives

# Set production environment
ARG RAILS_ENV="production" \
  RACK_ENV="production" \
  BUNDLE_WITHOUT="development:test"

ENV RAILS_ENV="$RAILS_ENV" \
  RACK_ENV="$RACK_ENV" \
  BUNDLE_DEPLOYMENT="1" \
  BUNDLE_PATH="/usr/local/bundle" \
  BUNDLE_WITHOUT="$BUNDLE_WITHOUT" \
  BUNDLE_FROZEN="true"


COPY Gemfile Gemfile.lock ./

RUN bundle install --jobs 4 --retry 5 --verbose

COPY . .
