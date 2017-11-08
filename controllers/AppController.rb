class AppController < Sinatra::Base
	require 'bundler'
	Bundler.require

	set :views, File.expand_path('../../views', __FILE__)
	set :public_dir, File.expand_path('../../public', __FILE__)

	ActiveRecord::Base.establish_connection(
		:adapter => 'postgresql',
		:database => 'pet'
	)

	not_found do
   		erb :not_found
    end
end