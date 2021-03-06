source 'https://rubygems.org'
ruby '2.6.5'

gem 'rails', git: 'https://github.com/lugray/rails.git', branch: '31445_fix_includes_unable_to_handle_case_insensitive_joins'
gem 'bootstrap'
gem 'attr_encrypted'
gem 'jquery-rails'
gem 'pagy'
gem 'local_time'
gem 'octicons_helper'
gem 'octokit'
gem 'omniauth-github', '>= 1.4.0'
gem 'puma'
gem 'sassc-rails'
gem 'turbolinks'
gem 'typhoeus'
gem 'faraday_middleware'
gem 'uglifier'
gem 'pg_search'
gem 'jbuilder'
gem 'rake', require: false
gem 'git'
gem 'rgb'
gem 'sidekiq'
gem 'sidekiq-unique-jobs'
gem 'sidekiq-scheduler', require: false
gem 'rack-canonical-host'
gem 'sidekiq-status'
gem 'gemoji', require: false
gem 'bootsnap', require: false
gem 'bugsnag'
gem 'jwt'
gem 'oj'
gem 'yard', require: false
gem 'commonmarker'

# Supported databases
gem 'mysql2', require: false
gem 'pg', '1.1.4', require: false

group :development, :test do
  gem 'byebug', platform: :mri
  gem 'dotenv-rails'
  gem 'guard'
  gem 'guard-minitest'
  gem 'rails-controller-testing'
  gem 'sql_queries_count'
  gem 'active_record_query_trace'
  gem 'rubocop', require: false
  gem 'rubocop-performance'
  gem 'rubocop-rails'
end

group :test do
  gem 'factory_bot'
  gem 'simplecov'
  gem 'webmock'
  gem 'mocha'
  gem 'minitest'
  gem 'timecop'
end

group :development do
  gem 'web-console'
  gem 'listen'
  gem 'spring'
  gem 'spring-watcher-listen'
  gem 'brakeman'
  gem 'bullet'
  gem 'binding_of_caller'
  gem 'better_errors'
end

group :production do
  gem 'skylight', '4.2.0'
  gem 'lograge'
  gem 'puma_worker_killer'
  gem 'hirefire-resource'
end

gem "sidekiq-failures", "~> 1.0"
gem "coffee-rails", "~> 4.2"
