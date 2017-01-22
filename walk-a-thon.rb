puts "Welcome to Crystal's Walk-A-Thon Tracker"
puts "Our goal is to raise money!"

puts "Enter the earning goal for this event:"
goal = gets.chomp.to_i

puts "Enter the amount earned per lap (per person)"
per_lap = gets.chomp.to_i

walker_list = []
  x = 0
  5.times do
  walker = {}
      puts "Please enter the number of laps completed by each person."
      x += 1
      puts "Walker " + x.to_s + ":"
      walker["lap count"] = gets.chomp.to_i
      walker["walker"] = x
      walker["earning"] = walker["lap count"] * per_lap
      walker_list << walker
      puts "Earned " + walker["earning"].to_s
  end


  greatest_walker = walker_list[0]["earning"]
  idx = 0
  while idx < (walker_list.length - 1)
    if walker_list[idx]["earning"] > walker_list[(idx + 1)]["earning"] && walker_list[idx]["earning"] >= greatest_walker
      greatest_walker = walker_list[idx]["earning"]
      walker_number = walker_list[idx]["walker"]
    end

  idx += 1
  end

  idx = 0
  total_earning = 0
  while idx < (walker_list.length - 1)
      total_earning = total_earning + walker_list[idx]["earning"]
      idx += 1
  end

puts "========================================="
puts "Highest Earning Walker: ##{walker_number}"
puts "Total amount earned: #{total_earning}"

if goal < total_earning
  puts "Goal Met? Yes!!"
else
  puts "Goal Met? No :/"
end

#puts walker_list.inspect
#puts walker_list.length
