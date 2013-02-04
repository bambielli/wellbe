source 'https://rubygems.org'
ruby '1.9.3'
gem 'rails', '3.2.11'
group :development, :test do
	gem 'sqlite3'
end
group :production do
	gem 'pg'
end
group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'
  gem 'uglifier', '>= 1.0.3'
end
gem 'jquery-rails'
gem "less-rails", ">= 2.2.6", :group => :assets
gem "twitter-bootstrap-rails", ">= 2.1.8", :group => :assets
gem "libv8", ">= 3.11.8"
gem "therubyracer", ">= 0.11.3", :group => :assets, :platform => :ruby, :require => "v8"
gem "simple_form", ">= 2.0.4"
gem "quiet_assets", ">= 1.0.1", :group => :development
gem "figaro", ">= 0.5.3"
gem "better_errors", ">= 0.3.2", :group => :development
gem "binding_of_caller", ">= 0.6.8", :group => :development
gem "hub", ">= 1.10.2", :require => nil, :group => [:development]
gem "heroku"
gem "stripe"
group :production do
	gem 'thin'
end
