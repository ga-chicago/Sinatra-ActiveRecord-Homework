class UsersController < HomeController


get '/' do
  p '-----------------------'
  puts session
  session["username"] = "Mike"
  p '-----------------------'
  p session
  erb :home
end


# route that responds with a json hash
post '/user' do

  p '-------------'
  puts params

  @user = User.new
  @user.username = params[:username]
  @user.password = params[:password]

  @user.save

  @user.to_json

end

get '/user' do
  #finds all users and returns them as json
  @user = User.all
  @user.to_json

end


get '/userView' do
  erb :user
end


#view for the login page
get '/login' do
  erb :login
end


# class UsersController < ApplicationController

#   get '/:username/:password/?' do |username, password|
#     # if username != 'Mike' && password != 'mypass'
#     #   user = User.create username: username, password: password
#     # end

#     # if user
#     #   'User was created'
#     # else
#     #   'There was an error creating a user'
#     # end
#   end
# end


end
