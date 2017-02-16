require 'open-uri'

reg_id = ""
timezone = []


File.readlines("reg_ids.txt").each do |line|
  reg_id = line
	
	reg_url = "http://www.worldcat.org/webservices/registry/content/Institutions/" + reg_id.to_s
	reg_url = URI.parse(URI.encode(reg_url.strip))
	#myfile = library_location.txt
	open(reg_url, "r") do |file|
		file.readlines.each do |line|
			if line.include? "latitude"
				timezone << line.to_s
			end
		end
	end
end

puts timezone
	

