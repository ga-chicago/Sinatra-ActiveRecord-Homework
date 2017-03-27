class BurritoController < ApplicationController

	get '/' do 
		@burritos = Burrito.all 
		@burritos.to_json
		erb :burrito
	end










end