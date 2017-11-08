class HomeController < ApplicationController


get '/' do

  erb :home
end

# route that responds with a json hash
post '/user' do
	p '---------'
	puts params
	#this is the name of our model class
	#from a form or ajax or postman...
	@user = User.new
	@user.username = params[:username]
	@user.password = params[:password]

	@user.save

	@user.to_json

end


get '/user' do
	#this route finds all the users and returns them as json
	@user = User.all
	@user.to_json

end