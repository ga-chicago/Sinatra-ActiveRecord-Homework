require 'sinatra/base'

require './controllers/ApplicationController'
require './controllers/HomeController'
require './controllers/BurritoController'

require './models/UserModel'


map('/') {run ApplicationController}
map('/home') {run HomeController}
map('/burrito') {run BurritoController}