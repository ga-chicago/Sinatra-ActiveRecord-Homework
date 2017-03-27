require 'sinatra/base'

require './controllers/ApplicationController'
require './controllers/HomeController'

require './models/MovieModel'











map('/') {run ApplicationController}
map('/home') {run HomeController}