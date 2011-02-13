require File.expand_path(File.dirname(__FILE__) + '/../application')
require 'sinatra'
require 'erb'

get '/' do
  @done = Done.all(:order => [ :day.desc, :habit.asc])
  @habits = Habit.all
  erb :habits
end

get '/json' do
  content_type :json

  Done.all.to_json
end
