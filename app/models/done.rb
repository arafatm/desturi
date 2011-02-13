class Done
  include DataMapper::Resource
  property :id,     Serial
  property :day,    Date
  property :habit,  String

  validates_uniqueness_of :habit, :scope => :day
end
