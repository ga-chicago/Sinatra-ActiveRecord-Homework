class HomeController < ApplicationController

get '/' do
	erb :home
end

post '/movie' do
	p '------------'
	puts params
	@movie = Movie.new
	@movie.title = params[:title]
	@movie.year = params[:year]
	@movie.director = params[:director]
	@movie.starring = params[:starring]
	@movie.rt = params[:rt]
	@movie.save
	@movie.to_json
end


get '/movie' do
	@movie = Movie.all
	@movie.to_json
end

delete '/movie/:id' do
  @movie = Movie.find(params[:id]).destroy
end

patch '/movie/:id' do
	@movie = Movie.find(params[:id])
	@movie.title = params[:title]
	@movie.year = params[:year]
	@movie.director = params[:director]
	@movie.starring = params[:starring]
	@movie.rt = params[:rt]
	@movie.save
end


get '/movies' do
	erb :movies
end

get '/moviestoo' do
	@film = Movie.all
	erb :moviestoo
end



end