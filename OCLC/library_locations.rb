require 'open-uri'

reg_id = ""
directory = []
latitude = {}
longitude = {}
registry_id = {}
location = []
library = {}




File.readlines("reg_ids.txt").each do |line|
  reg_id = line
	
	reg_url = "http://www.worldcat.org/webservices/registry/content/Institutions/" + reg_id.to_s
	reg_url = URI.parse(URI.encode(reg_url.strip))
	#myfile = library_location.txt
	open(reg_url, "r") do |file|
		file.readlines.each do |line|
			if line.include? "latitude"
				line = line.to_s.delete("<latitude>") 
#Can't put in multiple hashes this way? need to make individual hashes and then put these into a parent array
				library << {:latitude => line.to_s}
				break
			end
		end
	end
	open(reg_url, "r") do |file|
		file.readlines.each do |line|
				if line.include? "longitude" 
				line = line.to_s.delete("<longitude>")
				library << {:longitude => line.to_s}
				break
			end
		end
	end


end

puts library.inspect
	

