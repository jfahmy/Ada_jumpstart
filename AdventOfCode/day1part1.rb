input = 91212129
input = input.to_s
output = 0

input.length.times do |count|
  output += input[count].to_i if input[count] == input[count - 1]
end

puts output


raise 'wrong!' unless output == 9
