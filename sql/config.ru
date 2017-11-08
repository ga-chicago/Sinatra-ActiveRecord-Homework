require 'sinatra/base'
require './controllers/ApplicationController'
require './controllers/PokemonController'
require './models/Poke'

map('/') {run ApplicationController}
map('/poke') {run PokemonController}