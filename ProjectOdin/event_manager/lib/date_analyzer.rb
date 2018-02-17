require 'csv'

file_content = CSV.open "event_attendees.csv", headers: true, header_converters: :symbol

file_content.each do |row|
  date = row[1]
  puts date
end
