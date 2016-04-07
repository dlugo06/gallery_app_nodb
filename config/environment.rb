require 'yaml'
require 'bundler'
Bundler.require

environment = ENV.fetch('RACK_ENV') { 'development' }
db_options = { adapter: 'sqlite3', database: 'db/gallery_dev.sqlite3.db' }
ActiveRecord::Base.establish_connection(db_options)
