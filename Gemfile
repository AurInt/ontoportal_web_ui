# frozen_string_literal: true

source 'https://rubygems.org'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '6.1.7.3'

gem 'sass-rails', '~> 5.0'
gem 'terser'
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby
# gem 'duktape'

gem 'bootstrap', '~> 5.2.3'
gem 'chart-js-rails'
gem 'jquery-rails'
gem 'jquery-ui-rails'
gem 'select2-rails'

# To use ActiveModel has_secure_password
# gem 'bcrypt-ruby', '~> 3.0.0'

# To use Jbuilder templates for JSON
# gem 'jbuilder'

# To use debugger
# gem 'debugger'

gem 'base64', '0.1.0'
gem 'cube-ruby', require: 'cube'
gem 'dalli'
gem 'flamegraph'
# Version 2.1 breaks graphql-client. See: https://github.com/github/graphql-client/issues/310.
gem 'graphql', '~> 2.0.27'
gem 'graphql-client'
gem 'haml', '~> 5.1'
gem 'i18n'
gem 'iconv'
gem 'multi_json'
gem 'mysql2', '0.5.5'
gem 'oj'
gem 'open_uri_redirections'
gem 'pry'
gem 'psych', '< 4'
gem 'rack-mini-profiler'
gem 'rails_autolink'
gem 'rdoc'
gem 'recaptcha', '~> 5.9.0'
gem 'rest-client'
gem 'rexml', '~> 3'
gem 'stackprof', require: false
gem 'thin'
gem 'will_paginate', '~> 3.0'

gem 'ontologies_api_client', github: 'ncbo/ontologies_api_ruby_client', tag: 'v2.2.4'

group :staging, :production do
  # application monitoring
  gem 'newrelic_rpm'
  # logs in json format, useful for shipping logs to logstash
  # gem 'rackstash', git: 'https://github.com/planio-gmbh/rackstash.git'
  # gem 'logstash-logger'
end

group :development do
  # Capistrano Deployment
  gem 'bcrypt_pbkdf', '>= 1.0', '< 2.0', require: false # https://github.com/miloserdow/capistrano-deploy/issues/42
  gem 'capistrano', '~> 3.17', require: false
  gem 'capistrano-bundler', require: false
  gem 'capistrano-rbenv', require: false
  gem 'capistrano-locally', require: false
  gem 'capistrano-passenger', require: false
  gem 'capistrano-rails', '~> 1.4', require: false
  gem 'capistrano-yarn', require: false
  gem 'ed25519', '>= 1.2', '< 2.0', require: false # https://github.com/miloserdow/capistrano-deploy/issues/42
  gem 'html2haml'
  gem 'listen'
  # static code analysis
  gem 'brakeman', require: false
  gem 'rubocop', require: false
  # gem 'i18n-debug'
end

group :test, :development do
  gem 'rspec-rails'
end

group :test do
  gem 'capybara'
end
