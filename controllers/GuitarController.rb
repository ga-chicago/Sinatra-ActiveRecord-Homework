class GuitarController < ApplicationController


	get '/' do 

		@guitars = Guitar.all

		@guitars.to_json

	end

	post '/' do 

		@guitar = Guitar.new
		@guitar.gibson = params[:gibson]
		@guitar.fender = params[:fender]
		@guitar.taylor = params[:taylor]
		@guitar.ibanez = params[:ibanez]
		@guitar.amount = params[:amount]
		@guitar.save

	end

	delete '/:id' do 

		@guitar = Guitar.find_by(id: params[:id])
		@guitar.delete
		'delete'
	end

	post '/:id' do

		@guitar = Guitar.find_by(id: params[:id])
		@guitar.gibson = params[:gibson]
		@guitar.fender = params[:fender]
		@guitar.taylor = params[:taylor]
		@guitar.ibanez = params[:ibanez]
		@guitar.amount = params[:amount]
		@guitar.save
	end
end