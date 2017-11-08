class HomeController < ApplicationController


	get '/burritos' do 
		@burritos = Burrito.all 
		@burritos.to_json
	end

	get '/' do 
		@burritos = Burrito.all 
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

	patch '/:id' do
		id = params[:id]
		burrito = Burrito.find_by(id: id)
		# Burrito.where("id = #{id}")
		@burrito.name = params[:name]
		@burrito.protien = params[:protien]
		@burrito.wrapped = params[:wrapped]
		@burrito.spicy = params[:spicy]
		@burrito.price = params[:price]
		@burrito.save
		
		redirect '/home'
	end

	delete '/:id' do
		id = params[:id]
		Burrito.destroy(id)
		redirect '/home'
	end
end

