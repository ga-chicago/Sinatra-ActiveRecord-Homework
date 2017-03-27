class HomeController < ApplicationController

	enable :sessions

	get '/' do
		session["id"]= "id"
		erb :home
	end



	get '/register' do
		erb :register
	end

	post '/user' do
		p '----------------'
		puts params

		@user = User.new
		@user.username = params[:username]
		@user.first_name = params[:first_name]
		@user.last_name = params[:last_name]
		@user.email = params[:email]
		@user.phone = params[:phone]

		@user.save

		@user.to_json

	end


	get '/username' do
		@user = User.all
		@user.to_json	
	end

	get '/sinatra' do 
		user = User.all
		# user.each do |user|
		# 	user.first_name + user.last_name + ' username is ' + user.username + ' who you can contact at ' + user.email + ' or ' + user.phone
		# 	end 
		erb :sinatra
	end


	patch '/user/:id' do
		id = params[:id]

		@user = User.find_by(id)
		@user.username = params[:username]
		@user.first_name = params[:first_name]
		@user.last_name = params[:last_name]
		@user.email = params[:email]
		@user.phone = params[:phone]
		@user.save

	end

	
	delete '/user/:id' do
		id = params[:id]

		@user = User.find_by(id)
		@user.destroy
	end



end