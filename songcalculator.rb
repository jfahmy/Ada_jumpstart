puts "Welcome to the ultimate song time calculator!!!"

#creating an empty array to store song records in
song_list = []

#using a times loop because we know we need to create 4 song records from the user's input
4.times do
#creating a hash to store information about a single song so we can call on this information later
	song = {}

	puts "Give me the name of a song:"
	song["title"] = gets.chomp
	
#Added while loops and an if/else statements for validating the user input
	song["length"] = 0
	while song["length"] <=0
		puts "Give me the length of the song in seconds:"
		song["length"] = gets.chomp.to_i
			if song["length"] <= 0
				puts "That's not a number silly, try again!"
			end
	end

	song["play_count"] = 0
	while song["play_count"] <= 0
		puts "How many times have you played the song:"
		song["play_count"] = gets.chomp.to_i
			if song["play_count"] <= 0
				puts "That's not a number silly, try again!"
			end
	end

#after collecting user input about a single song to build the hash, we store the hash in the array
	song_list << song
end

#accessing values within our hashes to write out the user input
puts
puts "First song:\n\tname: " + song_list[0]["title"] + "\n\tlength in seconds: " + song_list[0]["length"].to_s + "\n\tplays: " + song_list[0]["play_count"].to_s
puts
puts "Second song:\n\tname: " + song_list[1]["title"] + "\n\tlength in seconds: " + song_list[1]["length"].to_s + "\n\tplays: " + song_list[1]["play_count"].to_s
puts
puts "Third song:\n\tname: " + song_list[2]["title"] + "\n\tlength in seconds: " + song_list[2]["length"].to_s + "\n\tplays: " + song_list[2]["play_count"].to_s
puts
puts "Fourth song:\n\tname: " + song_list[3]["title"] + "\n\tlength in seconds: " + song_list[3]["length"].to_s + "\n\tplays: " + song_list[3]["play_count"].to_s
puts



puts "===SUMMARY==="

idx = 0
greatest_song_time = 0
total_time = 0
while idx < 4
	song_seconds = song_list[idx]["length"] * song_list[idx]["play_count"]
	puts song_list[idx]["title"] + ": " + song_seconds.to_s + " seconds"
	total_time = total_time + song_seconds
# Using if statement to store the number of seconds and song title for the song with the most play time
		if
			greatest_song_time < song_seconds
			greatest_song_time = song_seconds
			greatest_song_title = song_list[idx]["title"]
		end
	idx += 1
end

puts
puts "Total play time: " + total_time.to_s + " seconds"
puts "The song with the most play time: " + greatest_song_title
puts

puts "Thank you for your input. Cya later!"
