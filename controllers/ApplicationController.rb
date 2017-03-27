#Set Application Model pulling from Sinatra as the Base
class ApplicationController < Sinatra::Base

	require 'bundler'
	Bundler.require()

#start sessions
	enable :sessions

#conntect to ActiveRecord Db
#set dy type sqi, or mysql
#set name of db
	ActiveRecord::Base.establish_connection(
		:adapter => 'postgresql',
		:database => 'cubbies'
		)

#set views
	set :views, File.expand_path('../..views', __FILE__)
	set :public_dir, File.expand_path('../..public', __FILE__)

	not_found do
	erb :not_found
	end
end	

#add not found page	

