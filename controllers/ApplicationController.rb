class ApplicationController < Sinatra::Base

	require 'bundler'
	Bundler.require

	ActiveRecord::Base.establish_connection(

			:adapter => 'postgresql',
			:database => 'guitar'
		)

	set :views, File.expand_path("../../views", __FILE__)

get '/' do

		'SUUUUUP dawg'
		
	end

end