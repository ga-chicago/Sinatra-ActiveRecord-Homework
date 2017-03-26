class ApplicationController < Sinatra::Base
	require 'bundler'
	Bundler.require


#this query the database
ActiveRecord::Base.establish_connection(
	#type of sql
	:adapter => 'postgresql',
	#name of the db
	:database => 'type_music'
	)

set :views, File.expand_path('../../views', __FILE__)
set :public_dir, File.expand_path('../../public', __FILE__)

  get '/home/music' do
   @message ="this is the music page"
   erb :music
  end


end