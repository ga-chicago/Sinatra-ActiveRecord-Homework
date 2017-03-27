class HomeController < ApplicationController

get '/' do
	puts params

	@user = login_info.all
	@login_info.to_json
	
end



post '/user' do

	puts params

	@user = login_info.new
	@user.username = params[:username]
	@user.password = params[:password]

	@user.save
	@user.to_json

end



end

