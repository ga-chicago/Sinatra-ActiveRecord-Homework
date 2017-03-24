require 'sinatra'


require './controller/ApplicationController'


map('/') {run ApplicationController}