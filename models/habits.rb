class Habit
  include DataMapper::Resource  
  property :id,           Serial
  property :name,         String
  property :description,  String
  property :color,        String
end
