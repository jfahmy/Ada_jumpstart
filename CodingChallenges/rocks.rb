#makes an array of 30 random rocks
rocks = 30.times.map{rand(200)}
puts rocks.join(', ')
max_rock = 0

rocks.each do |rock|
  max_rock = rock if rock > max_rock
end

puts "Heaviest rock is: #{max_rock}"

#alternative solution using inject
puts "Heavist rock is: #{rocks.inject{|max_rock, rock| max_rock > rock ? max_rock : rock}}"
