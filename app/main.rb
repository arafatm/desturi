require 'rubygems'
require 'sinatra'
require 'data_mapper'

DataMapper.setup(:default, ENV['DATABASE_URL'] || "sqlite3://#{Dir.pwd}/development.db")

class Habit
  include DataMapper::Resource  
  property :id,           Serial
  property :name,         String
  property :description,  String
  property :color,        String
end

get '/habits' do
  content_type 'application/json'
  Habit.all.to_json
end

DataMapper.auto_upgrade!
