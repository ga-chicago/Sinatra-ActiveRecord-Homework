require 'sinatra/base'

require './controllers/ApplicationController'
require './controllers/GuitarController'


require './models/guitar'




map('/') {run ApplicationController}
map('/guitars') {run GuitarController}
