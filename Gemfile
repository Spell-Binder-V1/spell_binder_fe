source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby "3.2.2"

# ---------------------------
# Core Rails Gems
# ---------------------------
gem "rails", "~> 7.0.7", ">= 7.0.7.2"
gem "sprockets-rails"

# ---------------------------
# Database
# ---------------------------
gem "pg", "~> 1.1"

# ---------------------------
# Web Server
# ---------------------------
gem "puma", "~> 5.0"

# ---------------------------
# Frontend Frameworks and Tools
# ---------------------------
gem "importmap-rails"        # JavaScript with ESM import maps
gem "turbo-rails"            # Hotwire's SPA-like page accelerator
gem "stimulus-rails"         # Hotwire's modest JavaScript framework
gem "jbuilder"               # Build JSON APIs with ease

# ---------------------------
# Authentication
# ---------------------------
gem "omniauth"                                # Standard library for multi-provider authentication
gem "omniauth-google-oauth2"                  # Google OAuth2 strategy for OmniAuth
gem "omniauth-rails_csrf_protection"          # Protects against CSRF attacks in OmniAuth

# ---------------------------
# HTTP Client
# ---------------------------
gem "faraday"                                 # HTTP client library

# ---------------------------
# CSS Framework
# ---------------------------
gem "bootstrap", "~> 5.3.1"                    # Bootstrap CSS framework

# ---------------------------
# Pagination
# ---------------------------
# gem "pagy"                                    # Pagination library

# ---------------------------
# Timezone Data for Windows
# ---------------------------
gem "tzinfo-data", platforms: %i[ mingw mswin x64_mingw jruby ]

# ---------------------------
# Performance Optimization
# ---------------------------
gem "bootsnap", require: false                  # Speeds up boot time by caching expensive operations

# ---------------------------
# Environment Variable Management
# ---------------------------
group :development, :test do
  gem "dotenv-rails"                           # Loads environment variables from .env
end

# ---------------------------
# Development-Specific Gems
# ---------------------------
group :development do
  gem "web-console"                            # Provides a console on exception pages
  gem "debug", platforms: %i[ mri mingw x64_mingw ] # Debugging tool
  gem "pry"                                     # Alternative to the standard IRB shell
end

# ---------------------------
# Test-Specific Gems
# ---------------------------
group :test do
  # Testing Frameworks and Tools
  gem "rspec-rails"                             # RSpec framework for Rails
  gem "capybara"                                # Integration testing tool
  gem "factory_bot_rails"                       # Fixtures replacement with a straightforward definition syntax
  gem "shoulda-matchers"                        # RSpec matchers for common Rails functionality
  gem "launchy"                                 # Opens a browser from Ruby
  gem "faker"                                   # Generates fake data
  gem "webmock"                                 # Stubs HTTP requests
  gem "simplecov"                               # Code coverage analysis
end

# ---------------------------
# Production-Specific Gems
# ---------------------------
group :production do
  # gem "memcached" add later
  # gem "sentry-raven"
  # gem "newrelic_rpm"
end

