class BakesaleTracker

	def initialize
	 	@sales = []
	 	@cookie_price = 2
	 	@cake_price = 6
	end

	def run
		#We can easily change the number of friends this program accepts by adjusting this times loop
		6.times do |friend|
			collect_friend_input(friend)
		end
		summarize
	end

	def collect_friend_input(number)
		# Creating a hash to store friend input
		input = Hash.new
		input[number.to_s] = "Friend #{(number+1).to_s}"
		puts "\n#{input[number.to_s]}: \nNumber of cookies sold?"
		input["cookies sold"] = gets.chomp.to_i
		puts "Number of pound cakes sold?"
		input["cakes sold"] = gets.chomp.to_i
		puts "Number of cookies remaining unsold?"
		input["leftover cookies"] = gets.chomp.to_i
		puts "Number of pound cakes remaining unsold?"
		input["leftover cakes"] = gets.chomp.to_i
		#shoveling the hash into our @sales array object so we can access later
		@sales << input
	end

	def summarize
		highest_seller = 0
		greatest_seller = nil
		puts "\n\n===SUMMARY==="
		puts "Total sales for each friend:\n"
		@sales.each_with_index do |friend, index|
			puts "#{friend[(index.to_s)]}: $#{calculate_per_friend(friend["cookies sold"], friend["cakes sold"])}"
			if calculate_per_friend(friend["cookies sold"], friend["cakes sold"]) > highest_seller
				highest_seller = calculate_per_friend(friend["cookies sold"], friend["cakes sold"])
				greatest_seller = friend[(index.to_s)]
			end
		end
		puts "\nFriend that raised the most overall: #{greatest_seller}"
		calculate_cookie_sales
	end

	def calculate_per_friend(cookies_sold, cakes_sold)
		money_made = (cakes_sold * @cake_price) + (cookies_sold * @cookie_price)
	end

	def calculate_cookie_sales
		total_cookie_sales = 0
		@sales.each_with_index do |friend, index|
			total_cookie_sales += (friend["cookies sold"] * @cookie_price)
		end
		puts "\nTotal amount raised by selling cookies: $#{total_cookie_sales}"
		calculate_cake_sales
	end

	def calculate_cake_sales
		total_cake_sales = 0
		@sales.each_with_index do |friend, index|
			total_cake_sales += (friend["cakes sold"] * @cake_price)
		end
		puts "\nTotal amount raised by selling pound cakes: $#{total_cake_sales}"
		calculate_net_total
	end

	def calculate_net_total
		total = 0
		cookie_production_cost = 1
		cake_production_cost = 3
		@sales.each_with_index do |friend, index|
			# adding number from profit of sold items to total
			total += (friend["cakes sold"] * @cake_price)
			total += (friend["cookies sold"] * @cookie_price)
			# remvoing the production cost from the total profit
			total -= (friend["leftover cakes"] + friend["cakes sold"]) * cake_production_cost
			total -= (friend["leftover cookies"] + friend["cookies sold"]) * cookie_production_cost
		end
		puts "\nTotal amount raised overall: $#{total}"

		puts "\nThank you for using the bake sale tracking program!"
	end

end

track = BakesaleTracker.new

track.run
