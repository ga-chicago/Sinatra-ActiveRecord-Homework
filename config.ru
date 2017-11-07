require 'sinatra/base'

require './controllers/AppController'
require './controllers/DogsController'

require './models/Dogs'

map('/') {run AppController}
map('/dogs') {run DogsController}