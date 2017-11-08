class PersonController < ApplicationController

    get '/' do
        puts session

        @persons = Person.all

        erb :person
    end

    # add a new person
    get '/add' do
        erb :person_add
    end

    post '/add' do
        @person = Person.new

        @person.first_name  = params[:first_name]
        @person.last_name   = params[:last_name]
        @person.sex         = params[:sex]
        @person.age         = params[:age]
        @person.married     = params[:married]

        @person.save

        redirect to('/')  # redirect to /person
    end

    get '/edit/:id' do
        @id = params[:id]

        @person = Person.find(@id)

        erb :person_edit
    end

    post '/edit' do
        @person.first_name  = params[:first_name]
        @person.last_name   = params[:last_name]
        @person.sex         = params[:sex]
        @person.age         = params[:age]
        @person.married     = params[:married]

        @person.save

        redirect to('/')  # redirect to /person
    end

end
