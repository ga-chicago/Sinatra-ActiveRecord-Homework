require 'sinatra/base'

# require controllers
require './controllers/ApplicationController'
require './controllers/HomeController'
require './controllers/CandyController'


# require models
require './models/UserModel'
require './models/CandyModel'

map('/') {run ApplicationController}
map('/home') {run HomeController}
map('/candy') {run CandyController}