require 'sinatra/base'

#require controllers
require './controllers/ApplicationController'
require './controllers/HomeController'

#require models
require './models/UserModel'

#connecting the controllers 
map('/') {run ApplicationController}
map('/home') {run HomeController}