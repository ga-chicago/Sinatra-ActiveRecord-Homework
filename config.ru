require 'sinatra/base'

# require controllers and models
Dir["./**/*.rb"].each {|file| require file }

# require controllers
#require './controllers/ApplicationController'
#require './controllers/HomeController'

# require models
#require './models/PersonModel'

# bundle exec rackup

map('/') {run ApplicationController}
map('/person') {run PersonController}
