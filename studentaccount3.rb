student_data = []

#Creates array from text file
name_file = File.readlines("names.txt")

#loops through each name in file
name_file.each do |name|
student = {}
student["name"] = name.chomp.upcase
#get random number
  student["ID"] = rand(111111..999999)
#creating email
  student["email"] = student["name"].strip[0] + student["name"].partition(' ').last + student["ID"].to_s.slice(3..6) + "@adadevelopersacademy.org"
#storing each set of student info in student_data as an array
  student_data << student
end


student_data.each do |student_hash|
  puts student_hash["name"] + " "+ student_hash["ID"].to_s + " " + student_hash["email"]
end

#puts student_names
#puts student_ids
#puts email_addresses
