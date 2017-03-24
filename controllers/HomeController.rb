class HomeController < AppController

get '/' do
  erb :home
end

get '/mexican' do
  @mex = Mex.all
  @mex.to_json
end

post '/mexican' do
  p '---------'
  puts params
  #this is the name of our Model class
  #from a form or ajax or postman...
  @mex = Mex.new
  @mex.name = params[:name]
  @mex.calories = params[:calories]
  @mex.carbs = params[:carbs]
  @mex.protein = params[:protein]
  @mex.healthy = params[:healthy]
  @mex.save
  @mex.to_json
end

get '/mexicanFood'do
  erb :mexican
end



end
