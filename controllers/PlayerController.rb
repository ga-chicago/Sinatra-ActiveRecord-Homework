#set player model first pull attributes from ApplicationController
class PlayerController < ApplicationController

	## route to Get all '*' players in table and render as JSON object
	get '/' do
		res = conn.exec('SELECT * FROM players')
		players = []
		res.each do |player|
			players.push(player)
		end
		players.to_json	
	end

	##  route to find a find and display a specific player from table by id 
	get '/players/id:' do
		id = params[:id]
		res = conn.exec('SELECT * FROM players WHERE id = #{id};')
		res[0].to _json
		"Success"
	end	

	## Route to add/post a new player
	post '/players' do
		data = eval(request.body.read)
		fname = data[:fname]
		lname = data[:lname]
		position = data[:position]
		bats = data[:bats]
		batavg = data[:batavg]

		conn.exec("INSERT INTO players (fname, lname, position, bats, batavg) VALUES
		('#{fname}', '#{lname}', '#{position}', '#{bats}', #{batavg};)")
		"Success"
	end

	## route to update/edit a player in db
	patch '/players/id:' do
		id = params[:id]
		data = eval(request.body.read)
		fname = data[:fname]
		lname = data[:lname]
		position = data[:position]
		bats = data[:bats]
		batavg = data[:batavg]
		conn.exec("UPDATE players SET (fname = '#{fname}', lname = '#{lname}', 
		position = '#{position}', bats = '#{bats}', batavg = #{batavg};)")
		"Success"
	end 	

	## route to delete a player from db
	delete '/players/id:' do
		id = params[:id]
		player.delete
		conn.exec("DELETE FROM players WHERE id = #{id};")
		"Success"
	end	

end	