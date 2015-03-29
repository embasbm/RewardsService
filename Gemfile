source 'https://rubygems.org'
ruby '2.2.0'
gem 'rails', '4.2.0'
gem 'bootstrap-sass', '~> 3.3.4'
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.1.0'
gem 'jquery-rails'
gem 'turbolinks'
gem 'jbuilder', '~> 2.0'

group :development, :test do
  gem 'mysql2'
  gem 'byebug'
  gem 'web-console', '~> 2.0'
  gem 'spring'
  gem 'mocha'
  gem 'minitest-reporters'
end

group :production do
  gem 'pg',             '0.17.1'
  gem 'rails_12factor', '0.0.2'
  gem 'rails_log_stdout',           github: 'heroku/rails_log_stdout'
  gem 'rails3_serve_static_assets', github: 'heroku/rails3_serve_static_assets'
  gem 'unicorn'
  gem 'rack-timeout'
end

group :doc do
  gem 'sdoc', require: false
end