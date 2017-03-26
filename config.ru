require 'sinatra/base'


require './controllers/ApplicationController'
require './controllers/SandwichController'

require './models/Sandwich'

map('/') {run ApplicationController}
map('/sandwich') {run SandwichController}
