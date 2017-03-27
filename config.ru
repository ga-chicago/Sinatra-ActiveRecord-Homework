require 'sinatra/base'

require './controllers/AppController'
require './controllers/HomeController'

require './models/MexModel'

map('/') {run AppController}
map('/home') {run HomeController}
