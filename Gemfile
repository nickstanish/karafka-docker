# frozen_string_literal: true

source "https://rubygems.org"

git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '3.4.2'

# Dotenv is loaded before other gems.
gem 'dotenv', groups: %i[development test], require: 'dotenv/load'

gem 'bigdecimal', '3.1.9'
gem 'datadog', '2.10.0', require: 'datadog/auto_instrument'
gem 'grpc', '1.67.0'
gem 'json', '>= 2.9.1'
gem 'karafka', '2.4.14'
gem 'karafka-testing', '2.4.6'
gem 'karafka-web', '0.10.4'
gem 'pg', '1.5.9'
gem 'rack', '~> 3.1'
gem 'rails', '~> 7.2.1'
gem 'ruby-vips', '2.2.2'