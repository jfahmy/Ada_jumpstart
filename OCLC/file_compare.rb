
f1 = File.open('enabled.txt')
f2 = File.open('analysis.txt')

file1_lines = f1.read
file2_lines = f2.readlines

file2_lines.each do |e|
	if file1_lines.include?(e.strip)
		puts e.strip + " has file."
	elsif e.strip == "N/A"
		# do nothing
	else
		File.open("Remove_GS_files.txt", "a") do |file|
			file.write(e.strip + " \n")
		end
	end
end