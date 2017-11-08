class BurritoController < ApplicationController

	get '/' do 
		@burritos = Burrito.all 
		erb :burrito
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

		redirect '/burrito'
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
		
		redirect '/burrito'
	end

	delete '/:id' do
		id = params[:id]
		Burrito.destroy(id)
		redirect '/burrito'
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

		redirect '/burrito'
	end






end