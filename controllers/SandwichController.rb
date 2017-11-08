class SandwichController < ApplicationController

	conn = PGconn.open(:dbname => 'weekend_hw')


	get ('/') do
		erb :home
	end

	get ('/more') do

		@sandwiches = Sandwich.all

		erb :moresandwiches
	end

	post ('/sandwiches') do

		puts '-----------------'
		puts params

		@sandwich = Sandwich.new
		@sandwich.bread = params[:bread]
		@sandwich.contents = params[:contents]
		@sandwich.health = params[:health]
		@sandwich.creativity = params[:creativity]
		@sandwich.difficulty = params[:difficulty]

		@sandwich.save
		@sandwich.to_json

		"success"
	end

	get ('/sandwiches') do
		@sandwich = Sandwich.all
		@sandwich.to_json
	end



end
