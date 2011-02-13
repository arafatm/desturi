require './application.rb'

DataMapper::Model.descendants.each {|m| m.all.destroy!}

(1..10).each do |i|
  h = Habit.new(:name => "h#{i}", :description => "Habit #{i}")
  if !h.save
    puts h.errors.to_yml
  end
end
