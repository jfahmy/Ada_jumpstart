require 'open-uri'
google_url = "http://www.worldcat.org/kb/download/export/google/"
library_list = "index.txt"

#Opening the list of libraries we need to analyze (index.txt)
File.open(library_list, "r") do |file|

  #Reading each line and building a URL with the library's reg id stuck on the end
  file.readlines.each do |reg_id|
  	reg_url = google_url + reg_id.to_s

  	open(reg_url.strip, "r") do |file|
		page = file.read
		
			if page.include? "holdings_google_"
				File.open("analysis.txt", "a") do |file|
					file.write(reg_id.to_s.strip + "\n")
				end
			else
				File.open("analysis.txt", "a") do |file|
					file.write("N/A\n")
				end
			end
	end

  end
end