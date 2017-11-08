require 'sinatra/base'

#require controllers
require './controllers/ApplicationController'
require './controllers/HomeController'
require './controllers/UsersController'

#require models
require './models/UserModel'

#connecting the controllers 
map('/') {run ApplicationController}
map('/home') {run HomeController}
map('/users') {run UsersController}