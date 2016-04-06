require 'sinatra'
require 'bundler'
require 'active_record'

class Image < ActiveRecord::Base

end

get '/' do
  "Hello Sinatra"
end
