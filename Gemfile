source "https://rubygems.org"

gem "rails", "~> 8.0.0"
gem "propshaft"
gem "sqlite3", ">= 2.1"
gem "puma", ">= 5.0"
gem "importmap-rails"
gem "turbo-rails"
gem "stimulus-rails"
gem "bcrypt", "~> 3.1.7"
gem "tzinfo-data", platforms: %i[windows jruby]
gem "solid_cache"
gem "solid_queue"
gem "solid_cable"
gem "bootsnap", require: false
gem "kamal", require: false
gem "thruster", require: false
gem "image_processing", "~> 1.2"

gem "devise" # Authentication
gem "devise-two-factor" # 2FA authentication
gem "doorkeeper" # OAuth2 provider
gem "rack-cors", require: "rack/cors" # Allow API access

gem "alba" # JSON serialization

gem "phlex-rails" # UI Components

gem "faker" # Fake data generation

group :development, :test do
  gem "debug", platforms: %i[mri windows], require: "debug/prelude"
  gem "oaken"
  gem "rspec-rails", require: false
  gem "brakeman", require: false
end

group :development do
  gem "web-console"
  gem "ruby-lsp", require: false
  gem "standard", ">= 1.37.0", require: false
  gem "ruby-lsp-rspec", require: false
  gem "yaml-sort", require: false
  gem "erb_lint", require: false
  gem "htmlbeautifier", require: false
end

group :test do
  gem "capybara"
  gem "selenium-webdriver"
  gem "capybara-playwright-driver", require: false
  gem "rspec-openapi", require: false
  gem "simplecov", require: false
end
