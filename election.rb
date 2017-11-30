print "Welcome to my election voting program!\n"
print "Election Candidates are: Minnie Mouse, Goofy and Donald Duck\n"

pres = ["Minnie Mouse", "Goofy", "Donald Duck"]

m = 0
g = 0
d = 0

again = "whileloop"

while again == "whileloop"
	(1..10).each do |prez|
		puts "What's your vote?"
		vote = gets.chomp
		puts "Vote #{prez}: " + vote
			if vote == "Minnie Mouse"
				m += 1
			elsif vote == "Goofy"
				g += 1
			elsif vote == "Donald Duck"
				d += 1
			else
				puts "Fine, but write in votes are useless..."
			end
	end


	print "Vote Summary:\n"
	if m == 1
		print "Minnie Mouse - #{m} vote\n"
	else
		print "Minnie Mouse - #{m} votes\n"
	end
	if g == 1
		print "Goofy - #{g} vote\n"
	else
		print "Goofy - #{g} votes\n"
	end
	if d == 1 
		print "Donald Duck - #{d} vote\n"
	else
		print "Donald Duck - #{d} votes\n"
	end

	if m > g && m > d
		again = "no"
		puts "WINNER: Minnie Mouse"
	elsif g > m && g > d 
		again = "no"
		puts "WINNER: Goofy"
	elsif d > m && d > g 
		again = "no"
		puts "WINNER: Donald Duck"
	else
		if m = g || d = m || g = d
			again = "whileloop"
			m = 0
			g = 0
			d = 0
			puts "Nooooooo!!!! We have a tie!!!!!!!! Recount!!!"
		else 
		end
	end
end
