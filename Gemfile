source 'https://rubygems.org'
ruby '1.9.3'
gem 'rails', '4.0.2'
gem 'pg' # https://devcenter.heroku.com/articles/getting-started-with-rails4#use-postgres
gem 'sass-rails', '~> 4.0.0'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.0.0'
gem 'jquery-rails'
gem 'turbolinks'
gem 'jbuilder', '~> 1.2'
gem 'bootstrap-sass', '>= 3.0.0.0'
gem 'devise'
gem 'devise_invitable'
gem 'figaro'
gem 'haml-rails'
gem 'simple_form'
gem 'thin'
gem 'cancan'
## gem 'cancan_strong_parameters' ## patch may not always be necessary ## didn't help
gem 'rolify'
group :development, :test do
  gem 'rspec-rails'
end
group :test do
  gem 'cucumber-rails', :require => false
  # gem 'database-cleaner'
end
group :development do
  gem 'better_errors'
  gem 'binding_of_caller', :platforms=>[:mri_19, :mri_20, :rbx]
  gem 'html2haml'
  gem 'quiet_assets'
  gem 'rails_layout'
end
group :production do
  gem 'rails_12factor'
end
