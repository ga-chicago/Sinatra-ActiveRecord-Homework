class AppController < Sinatra::Base
	require 'bundler'
	Bundler.require

	set :views, File.expand_path('../../views', __FILE__)

	ActiveRecord::Base.establish_connection(
		:adapter => 'postgresql',
		:database => 'pet'
	)
end