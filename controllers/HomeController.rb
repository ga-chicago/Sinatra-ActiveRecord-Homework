class HomeController < ApplicationController

get '/' do 
	
	erb :home
end

#returns all players as json
get '/player' do
	@player = Player.all
	@player.to_json
end

#creating new player info 
post '/player' do 
	p '----------'
	puts params
	@player = Player.new
	@player.name = params[:name]
	@player.position = params[:position]
	@player.height = params[:height]
	@player.ppg = params[:ppg]
	@player.college = params[:college]
	@player.save
	@player.to_json
end


#locating and deleting player in db
delete '/player/:id' do
	@player = Player.find(params[:id]).destroy
end


#replacing info on player
patch '/player/:id' do
	@player = Player.find(params[:id])

	@player.name = params[:name]
	@player.position = params[:position]
	@player.height = params[:height]
	@player.ppg = params[:ppg]
	@player.college = params[:college]
	@player.save
	@player.to_json

end


#page to display list of all players
get '/players' do
	@players = Player.all
	erb :players

end


end


