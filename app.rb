require 'sinatra'
require 'bundler'
require 'active_record'
require_relative 'models/image'
require_relative 'config/environments'


post '/' do
  Image.create({url: "http://i150.photobucket.com/albums/s85/michelleNpete/BaBas/awesome-beautiful-blue-eyes-cat-cute-Favimcom-110476.jpg", title: "The first magic picture"})
  @images = Image.all
  erb :index
end

get "/" do
  # Image.create({url: "http://placekitten.com/200/300", title: "The first magic picture"})
  @images = Image.all
  erb :index
end

get "/photo/:id" do
  @images = Image.all
  erb :single
end
