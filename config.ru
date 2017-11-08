require 'sinatra/base'

require './controllers/ApplicationController'
require './controllers/HomeController'

require './models/MusicModel'


map('/'){run ApplicationController}
map('/home'){run HomeController}