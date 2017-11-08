class DogsController < AppController
	get '/' do
		erb :home
	end

	get '/doggos' do
		@dogs = Dog.all
		@dogs.to_json
	end

	get '/pupper' do
		@dogs = Dog.all
		@dogs.to_json
		erb :dogs
	end

	post '/' do
		@dog = Dog.new
		@dog.name = params[:name]
		@dog.breed = params[:breed]
		@dog.gender = params[:gender]
		@dog.goodboy = true;
		@dog.age = params[:age]
		@dog.save
		@dog
	end

	delete '/:id' do
		@dog = Dog.find_by(id: params[:id])
		@dog.delete
		'Deleted'		
	end

	put "/:id" do
		@dog = Dog.find_by(id: params[:id])
		@dog.name = params[:name]
		@dog.breed = params[:breed]
		@dog.gender = params[:gender]
		@dog.goodboy = true;
		@dog.age = params[:age]
		@dog.save
	end
end