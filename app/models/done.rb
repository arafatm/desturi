class Done
  include DataMapper::Resource
  property :id,     Serial
  property :day,    Date
  property :habit,  String
end
