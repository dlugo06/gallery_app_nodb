require 'sinatra'
require 'bundler'
require 'active_record'

class Image < ActiveRecord::Base

end


ActiveRecord::Base.establish_connection(
  :adapter => 'sqlite3',
  :database =>  'gallery_dev.sqlite3.db'
)



get "/" do
  Image.create({url: "http://placekitten.com/200/300", title: "The first magic picture"})
  @images = Image.all
  erb :index
end

get "/photo/:id" do
  @images = Image.all
  erb :single
end
