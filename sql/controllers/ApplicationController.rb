class ApplicationController < Sinatra::Base

	require 'bundler'
	Bundler.require
	ActiveRecord::Base.establish_connection(
			:adapter => 'postgresql',
			:database => 'food'
		)
	set :views, File.expand_path('../../views',__FILE__)
	get '/' do 	
		erb :home		
	end
end