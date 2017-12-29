
#Hash or map of state abbreviations
states = {
  'Oregon' => 'OR',
  'Florida' => 'FL',
  'California' => 'CA',
  'New York' => 'NY',
  'Michigan' => 'MI',
}

#Hash for set of states and some cities
cities = {
  'CA' => 'San Fransisco',
  'MI' => 'Detroit',
  'FL' => 'Jacksonville'
}

# a few more cities to be added to the hash above
cities['NY'] = 'New York City'
cities['OR'] = 'Portland'
cities['TX'] = 'Austin baby!'

#puts out some cities
puts '-' * 10
puts "NY State has: #{cities['NY']}"
puts "OR State has: #{cities['OR']}"

#puts some states
puts '-' * 10
puts "Michigan has: #{cities[states['Michigan']]}"
puts "Florida has: #{cities[states['Florida']]}"

#puts every state abbreviation
puts '-' * 10
states.each do |state, abbrev|
  puts "#{state} is abbreviated #{abbrev}"
end

puts '-' * 10
cities.each do |abbrev, city|
  puts "#{abbrev} has the city #{city}"
end

puts '-' * 10
state = states['Texas']

if !state
  puts "Sorry, no Texas"
end

city = cities['TX']
city ||= 'Does Not Exist'
puts "The city for the state 'TX' is: #{city}"
