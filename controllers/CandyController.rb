class CandyController < ApplicationController


	get '/'  do
		
		erb :candy

		end

#post route

post '/' do

	puts params
	candy = Candy.new
	candies = candy.all

	@my_candy.type = params[:type]
	@my_candy.sweetness = params[:sweetness]
	@my_candy.price = params[:price]
	@my_candy.health = params[:health]

	@my_candy.save

	erb :candy

	redirect '/candy'

	patch '/:id' do
		id = params[:id]

		Candy.where("id = #{id}")


	end


#delete
delete '/:id' do
	id = params[:id]
	Candy.destroy(id)
	redirect :candy

Candy.destroy(id)
"success"

end
