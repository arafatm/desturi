require 'rubygems'
require 'data_mapper'

require 'sinatra'
require 'logger'

Dir.glob('./app/models/*.rb') do |model|
  require model
end

DataMapper.setup(:default, "sqlite3://#{Dir.pwd}/db/habits.db")
DataMapper.auto_upgrade!

class App < Sinatra::Base
  configure do
    LOGGER = Logger.new("sinatra.log") 
  end

  helpers do
    def logger
      LOGGER
    end
  end
end


