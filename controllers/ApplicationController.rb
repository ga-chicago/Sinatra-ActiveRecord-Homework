class ApplicationController < Sinatra::Base

#requiring the use of 'bundler'
require 'bundler'
Bundler.require

#enabling the use of sessions
enable :sessions


#defining the type of SQL being used and name of database
ActiveRecord::Base.establish_connection(
	:adapter  => 'postgresql',
	:database => 'sess_hw'
	)

#telling the server where to find the 'views' and 'public' folder
set :views, File.expand_path('../../views',__FILE__)
set :public_dir, File.expand_path('../../public',__FILE__)


#if a view is not found, direct to 404 page
not_found do 
	erb :not_found
end


end