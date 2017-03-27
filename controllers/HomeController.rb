class HomeController < ApplicationController


	get '/burritos' do 
		@burritos = Burrito.all 
		@burritos.to_json
	end

	get '/' do 
		@burritos = Burrito.all 
		@burritos.to_json
		erb :home 
	end

	post '/' do 
		puts params

		@burrito = Burrito.new
		@burrito.name = params[:name]
		@burrito.protien = params[:protien]
		@burrito.wrapped = params[:wrapped]
		@burrito.spicy = params[:spicy]
		@burrito.price = params[:price]
		@burrito.save

		redirect '/home'
	end

	patch '/home/:id' do
		id = params[:id]
		data = eval(request.body.read)

		name = data[:Name]
		protien = data[:protien]
		wrapped = data[:wrapped]
		spicy = data[:spicy]
		price = data[:Price]
		
		"success"
	end

	delete '/home/:id' do
		id = params[:id]
		"Success"
	end
end

