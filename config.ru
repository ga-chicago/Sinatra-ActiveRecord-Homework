require 'sinatra/base'

require './controllers/ApplicationController'
require './controllers/HomeController'

require './models/Usermodel'

map('/') {run ApplicationController}
map('/home') { run HomeController}