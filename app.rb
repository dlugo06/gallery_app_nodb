require 'sinatra'
require 'bundler'
require 'active_record'
require_relative 'models/image'
require_relative 'config/environments'


get "/" do
  Image.create({url: "http://placekitten.com/200/300", title: "The first magic picture"})
  @images = Image.all
  erb :index
end

get "/photo/:id" do
  @images = Image.all
  erb :single
end
