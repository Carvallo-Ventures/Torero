source 'https://rubygems.org'


# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.2.7'

ruby '2.3.1'
#Setup Ccan
#gem 'cancancan', '~> 1.15'

#add Jquery UI
gem 'jquery-ui-rails'
#use Postgresql 
gem 'pg'
#set enviroment Variables 
gem 'figaro', '~> 1.1', '>= 1.1.1'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.1.0'
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails'
# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.0'
# bundle exec rake doc:rails generates the API under doc/api.
gem 'sdoc', '~> 0.4.0', group: :doc

#add authenicated users
gem 'devise', '~> 4.2'
#upload images
gem 'paperclip', '~> 5.0'
#add bootstap sass
gem 'bootstrap-sass', '~> 3.3', '>= 3.3.7'
#add icons
gem 'font-awesome-sass'


gem 'aws-sdk', '~> 2.3'

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug'
  #add rpec for testing
  gem 'rspec-rails'
  #add factory girl to create our factories
 gem 'factory_girl'

end



group :development do
  # Access an IRB console on exception pages or by using <%= console %> in views
  gem 'web-console', '~> 2.0'

  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
end

group :test do
	#Faker generates names, email addresses, and other placeholders for factories.
	gem 'faker'
	#capybara makes it easy to programatically simulate your users’ interactions with your application.
	gem 'capybara'
	#guard-rspec watches your application and tests and runs specs for you automatically when it detects changes.
	gem 'guard-rspec'
	# opens your default web browser upon failed integration specs to show you what your application is rendering.
	gem 'launchy'
end


group :production do
	#
	gem 'rails_12factor'
	
	end


