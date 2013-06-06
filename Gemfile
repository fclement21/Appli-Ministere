source 'http://rubygems.org'

# Core framework
gem 'rails', '3.2.11'
gem 'rake'

# Rails 3's asset pipeline
gem 'json'
gem 'sass-rails'
gem 'coffee-rails'
gem 'uglifier'
# JS Runtime
gem 'therubyracer'

# App's gems
gem 'inherited_resources'
gem 'carrierwave'
gem 'rmagick'
gem 'redcarpet'
gem 'simple_form', '~> 1.5.2'
gem 'show_for'
gem 'has_scope'
gem 'mail_form'
gem 'jquery-rails', '>= 1.0.12'
gem 'friendly_id'
gem 'pdfkit', '0.5.2'
gem 'wkhtmltopdf-binary'
gem 'storcs', '>= 0.0.2'
gem 'hashie'
gem 'nokogiri'
gem 'draper'
gem 'deface', '= 0.7.2'
gem 'rabl', '>= 0.5.3'
# Mongo / data manipulation
#gem 'mongoid', '~> 3.0.5'
#gem 'mongoid-ancestry'
#gem 'mongoid_rails_migrations'
#gem 'mongoid_alize' #denormalizartion
#gem 'mongoid_slug', '> 2.0.0'
gem 'sqlite3'
gem 'textile_editor_helper'
gem 'markitup-rails'
gem 'kaminari'
# Styles
gem 'bootstrap-sass'
gem 'font-awesome-sass-rails'
gem 'lograge'
# Authentication
gem 'omniauth', '>= 1.0.0'
gem 'omniauth-cas', '>= 0.0.6'
gem 'devise', '~> 2.0.0'

# Plugins/engines
Dir.glob(File.expand_path("../vendor/plugins/*/Gemfile",__FILE__)).each do |gemfile|
  instance_eval File.read(gemfile)
end

# Debugging tools
gem 'log_buddy'
group :development, :test do
  gem 'quiet_assets'
  gem 'pry'
  gem 'i18n-verify'
end

# Tests
group :test do
  gem 'factory_girl_rails', '~> 3.0'
  gem 'database_cleaner'
  gem 'guard-rspec'
  gem 'spork'
  gem 'guard-spork'
  gem 'growl' if RUBY_PLATFORM.match /darwin/
  gem 'libnotify' if RUBY_PLATFORM.match /linux/
  # listen to file modifications
  gem 'listen'
  gem 'rb-fsevent' if RUBY_PLATFORM.match /darwin/
  gem 'rb-inotify' if RUBY_PLATFORM.match /linux/
  # the cover_me gem is not compatible with rbx and jruby
  # but only need this on one environment...
  gem 'cover_me', :platforms => :mri_19
  gem 'rspec'
  gem 'rspec-rails'
  gem 'capybara'
end
