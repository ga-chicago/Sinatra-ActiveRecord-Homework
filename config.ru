require 'sinatra/base'

require 'pg'
require 'json'


require './controllers/ApplicationController'
require './controllers/HomeController'

require './models/UserModel'


map('/') {run ApplicationController}
map('/home') {run HomeController}