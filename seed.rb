require './application.rb'

DataMapper::Model.descendants.each {|m| m.all.destroy!}

(1..3).each do |i|
  h = Habit.new(:name => "h#{i}", :description => "Habit #{i}")
  if !h.save
    puts h.errors.to_yaml
  end
end

habits = Habit.all

(1..100).each do |i|
  d = Done.new(:day   => Date.today - rand(60),
               :habit => habits[rand(habits.length)].name) 
  if !d.save
    puts d.errors.to_yaml
  end
end
