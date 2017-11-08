class PokemonController < ApplicationController
	get '/' do
		@poke = Poke.all
		erb :Poke
	end

	post '/' do
		@poke = Poke.new
		@poke.name = params[:name]
		@poke.type = params[:type]
		@poke.skills = params[:skills]
		@poke.level = params[:level]
		@poke.exp = params[:exp]
		@poke.save
		'saved'
	end
	delete '/:id' do
		@poke = Poke.find_by(id: params[:id])
		@poke.delete
		'deleted'
	end
	put '/:id' do
		@poke = Poke.find_by(id: params[:id])
		@poke.name = params[:name]
		@poke.type = params[:type]
		@poke.skills = params[:skills]
		@poke.level = params[:level]
		@poke.exp = params[:exp]
		@poke.save
		'edited'
	end
end