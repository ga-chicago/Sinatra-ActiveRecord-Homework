class HomeController < ApplicationController

	get '/home' do
	@message = "this is the home page"
	erb :home	
	end

	post '/music' do
		puts params

		@music = Music.new
		@music.band = params[:band]
		@music.best_album = params[:best_album]
		@music.fav_song = params[ :fav_song]
		@music.grammy = params[ :grammy]

		@music.save
		@music.to_json

	end


	get '/music' do
		#FIND ALL THE MUSIC FROM THE DB
		@music = Music.all
		#BRING THE INFO TO THE CLIENT 
		@music.to_json
	end

	get '/jams' do
		erb :music
	end










end



