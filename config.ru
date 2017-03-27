require 'sinatra/base'

# require controllers
require './controllers/ApplicationController'


# require models
require './models/UserModel'

map('/') {run ApplicationController}