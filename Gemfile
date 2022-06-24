# frozen_string_literal: true

bundle_version = `tail -n 1 Gemfile.lock`.strip
if ENV["RAILS_ENV"] != "production" && Gem::Version.new(Bundler::VERSION) != Gem::Version.new(bundle_version)
  abort "Your bundler version is #{Bundler::VERSION}, version #{bundle_version} is required to run this application."
end

source "https://rubygems.org"

git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby "3.0.2"

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem "rails", "6.1.5.1"

# Use postgresql as the database for Active Record
gem "pg", "1.2.3"

# Use Puma as the app server
gem "puma", "5.6.4"

# Use SCSS for stylesheets
gem "sass-rails", "6.0.0"

# Use Uglifier as compressor for JavaScript assets
gem "uglifier", "4.2.0"

# Use CoffeeScript for .coffee assets and views
gem "coffee-rails", "5.0.0"

# Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
gem "turbolinks", "5.2.1"

gem "lograge", "0.11.2"

# Use Redis adapter to run Action Cable in production
gem "redis", "4.2.5"

# Haml templating engine
gem "haml-rails", "2.0.1"
gem "haml_lint", "0.37.0"

# Authentication
gem "devise", "4.8"
gem "devise_invitable", "2.0.6"

# Pagination
gem "kaminari", "1.2.1"

# Soft-Delete
gem "paranoia", "2.4.3"

# Cloning records
gem "deep_cloneable", "3.0.0"

# Sorting
gem "acts_as_list", "1.0.1"

# tags
gem "acts-as-taggable-on", "7.0.0"

# Unobtrusive Javascript for Jquery. Still better than rails 5 native rails-ujs
gem "jquery-rails", "4.4.0"

# Stripe API
gem "stripe", "5.24.0"
gem "stripe_event", "2.3.1"

# Needed Zapier REST Hooks
gem "rest-client", "2.1.0"

# File uploading
gem "carrierwave", "3.0.0.alpha",  git: "https://github.com/trainual/carrierwave.git"
gem "carrierwave-base64", "2.8.1"
gem "fog-aws", "3.10.0"
gem "rmagick", "4.1.2"
gem "aws-sdk-s3", "1.93.1"

# Models hierarchies
gem "closure_tree", github: "ClosureTree/closure_tree", ref: "15b253e"

# Human-friendlyId
gem "friendly_id", "5.4.2"

# Authorization library
gem "pundit", "2.1.0"

# Notifications
gem "public_activity", "1.6.4"

# Foundation For Emails
gem "inky-rb", "1.3.8.0", require: "inky"

# CSS Styled Emails
gem "premailer-rails", "1.11.1"

# Asynchronous Processing
source "https://enterprise.contribsys.com/" do
  gem "sidekiq-ent", "2.3.1"
end

# Patterns
gem "rails-patterns", "0.8.0"

# Smart Counters
gem "counter_culture", "3.1.0"
gem "after_commit_action"

# JSONb Accessor
gem "jsonb_accessor", "1.3.0"

# PDF Generation
gem "wicked_pdf", "2.1.0"
gem "wkhtmltopdf-binary"

# Intercom
gem "intercom", "4.1.3"

# Ajax Datatables
gem "ajax-datatables-rails", "1.2.0"

# American Date Support
gem "american_date", "1.1.1"

# Search Filters
gem "ransack", "2.4.2"

# Rack Tracker
gem "rack-tracker", "1.12.1"

# Cross-Origin Resource Sharing
gem "rack-cors", "1.1.1"

# Schedule Jobs
gem "sidekiq-scheduler", "3.1.0" # seems like we can remove this gem 'cause we have https://sidekiq.org/products/enterprise.html

# Exception Handler
gem "exception_handler", "0.8.0.0"

# async partials
gem "render_async", "2.1.7"

# memcached
gem "dalli", "2.7.11"

# elasticsearch
gem "searchkick", "4.4.1"

# OmniAuth is a library that standardizes multi-provider authentication for web applications
gem "omniauth", "2.0.4"
gem "omniauth-oktaoauth", "0.1.7",  git: "https://github.com/trainual/omniauth-oktaoauth.git"
gem "omniauth-rails_csrf_protection"

# Rpush. The push notification service for Ruby.
gem "rpush", "5.4.0"

# Heap analytics tracking
gem "heap", "1.0.2"

# Segment analytics tracking
gem "simple_segment"

# Split / Feature manager
gem "splitclient-rb", "~> 7.3", ">= 7.3.3"

# translations for js
gem "i18n-js", "3.9.0"

# Countries
gem "country_select", "4.0.0"

# Ancestry / Org Chart
gem "ancestry", "4.0.0"

# Active Interactor Service Wrapper
gem "activeinteractor",
    git: "https://github.com/trainual/activeinteractor.git",
    branch: "maint/bump-rails-dependencies",
    require: "active_interactor"

# Nokogiri
gem "nokogiri", "1.13.6"

group :production do
  # New Relic monitoring
  gem "newrelic_rpm", "6.15.0"

  # Scout monitoring
  gem "scout_apm", "4.0.4"

  gem "ddtrace"
  gem "rbtrace", require: false
end

# api documentation
gem "rswag-api", "2.3.1"
gem "rswag-ui", "2.3.1"

# api serializers
gem "panko_serializer", "0.7.5"

# extracting locale from Accept-Language header
gem "http_accept_language", "2.1.1"

gem "vite_rails", "3.0.1"

# connection_pool
gem "connection_pool", "2.2.3"

gem "shrine", "3.3.0"
gem "image_processing", "1.12.2"
gem "fastimage", "2.2.0"

# singletons
gem "request_store", "1.5.0"

# react
gem "react_on_rails", "12.4.0"

# Embed SVG documents in your Rails views and style them with CSS
gem "inline_svg", "1.7.1"

# Reduces boot times through caching; required in config/boot.rb
gem "bootsnap", "1.4.7", require: false

# Being used by seeds as well as tests
gem "faker", "2.17.0"
gem "factory_bot_rails", "6.1.0"

# Roo implements read access for all common spreadsheet types
gem "roo", "~> 2.8", ">= 2.8.3", git: "https://github.com/roo-rb/roo.git"

# .xlsx generation
gem "caxlsx"

gem "dotenv-rails", "2.7.6"
gem "browser", "5.3.1"
gem "google-cloud-ai_platform", "~> 0.1.0"

group :production, :test do
  # Sentry error reporting
  gem "sentry-ruby", "4.3.1"
  gem "sentry-rails", "4.3.3"
  gem "sentry-sidekiq", "4.3.0"
end

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem "byebug", "11.1.3", platforms: %i[mri mingw x64_mingw]
  gem "pry-rails", "0.3.9"
  gem "rspec-rails", "4.0.1"
  gem "rails_semantic_logger", "4.6.0"
  gem "rswag-specs", "2.3.1"
  gem "elasticsearch-extensions", "0.0.33"
  gem "knapsack_pro", "~> 3.1.3"
  gem "brakeman", "5.2.0"
  gem "spring", "2.1.0"
  gem "spring-watcher-listen", "2.0.1"
  gem "spring-commands-rspec", "1.0.4"
  # The Bullet gem is designed to help you increase your application's performance
  gem "bullet"
end

group :development do
  # Access an IRB console on exception pages or by using <%= console %> anywhere in the code.
  gem "listen", "3.7.0"
  gem "web-console", "4.1.0"
  gem "rubocop", "1.22.3", require: false
  gem "rubocop-performance", "1.11.5", require: false
  gem "rubocop-rails", "2.12.4", require: false
  gem "active_record_doctor", "1.8.0"
  gem "guard-rspec", "4.7.3", require: false
  gem "guard-rubocop", "1.5.0", require: false

  # Better errors
  gem "better_errors", "2.9.1"
  gem "binding_of_caller", "1.0.0"

  # Profilers
  gem "rack-mini-profiler"
  gem "flamegraph"
  gem "stackprof"
  gem "memory_profiler"
end

group :test do
  gem "capybara", "3.35.3"
  gem "capybara-screenshot"
  gem "selenium-webdriver", "3.142.7"
  gem "webdrivers", "4.5.0"
  gem "webmock", "3.8.3", require: false
  gem "rails-controller-testing", "1.0.5"
  gem "shoulda-matchers", "4.5.1"
  gem "email_spec", "2.2.0"
  gem "simplecov", "0.18.5", require: false
  gem "vcr", "6.0.0"
  gem "ostruct", "0.3.3"
  gem "database_cleaner", "2.0.1"
  gem "rspec-retry", "0.6.2"
  gem "activerecord-nulldb-adapter", "0.8.0"
  gem "rspec_junit_formatter"
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem "tzinfo-data", platforms: %i[mingw mswin x64_mingw jruby]

gem "bcrypt", "~> 3.1"
