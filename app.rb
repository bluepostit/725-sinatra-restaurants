require_relative "config/application"
require "sinatra"
require "sinatra/reloader"
require "sinatra/activerecord"

get "/" do
  # fetch all restaurants from db
  # list them
  @restaurants = Restaurant.all
  erb :index
end

get '/restaurants/:id' do
  id = params[:id]
  @restaurant = Restaurant.find(id)
  erb :show
end

post '/restaurants' do
  p params
  restaurant = Restaurant.create(
    name: params[:name],
    address: params[:address]
  )
  redirect "/restaurants/#{restaurant.id}"
end
