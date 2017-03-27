#require sinatra
require 'sinatra/base'

#require controllers
require './controllers/ApplicationController'
require './controllers/PlayerController'

#require models

#maps
map('/'){run ApplicationController}
map('/player'){run PlayerController} 