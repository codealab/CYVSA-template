source 'https://rubygems.org'
ruby '2.0.0'

gem 'rails', '4.0.0'	
gem 'pg'
gem 'carrierwave', '~> 0.10.0'

gem 'therubyracer', '~> 0.12.1' if RUBY_PLATFORM == /darwin/

gem 'bcrypt-ruby', '3.0.0'
gem 'bootstrap-wysihtml5-rails', :git => 'git://github.com/Nerian/bootstrap-wysihtml5-rails.git'
gem 'bootstrap-sass', '~> 3.2.0'
gem 'sprockets', '~> 2.11.0'

gem 'sass-rails', '4.0.1'
gem 'uglifier', '2.1.1'
gem 'coffee-rails', '4.0.1'
gem 'jquery-rails', '~> 3.1.1'
gem 'turbolinks', '1.1.1'
gem 'jbuilder', '1.0.2'

group :doc do
  gem 'sdoc', '0.3.20', require: false
end

group :development,:test do
  gem "mini_magick"
  gem "better_errors"
  gem 'rspec-rails', '2.13.1'
  gem 'shoulda-matchers', '~> 2.6.2'
  gem 'shoulda-matchers-callbacks', '~> 0.0.1'
end

group :production do
  gem 'rails_12factor', '0.0.2'
  gem 'rmagick', :require => "RMagick"
  gem 'fog', '~> 1.23.0'
  gem 'unf', '~> 0.1.4'
end