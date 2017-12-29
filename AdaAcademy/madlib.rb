print "Let's play Library Madlibs together!!\n"
# This is an introduction message to the user. the \n commmand gives me a line break after this message is printed.

puts "Give me an adjective:"
adjective = gets.chomp
#We are asking the user for an adjective and then using gets.chomp to store it as 'adjective' for use in the madlib later.

puts "Give me a verb ending with -ing:"
verb_ing = gets.chomp

puts "character in a book:"
character = gets.chomp.capitalize
#One way to capitalize the first letter of a string is to add 'capitalize' to the end of gets.chomp. But there's another way to capitalize too, see the hometown example below in the madlib story part of the code

puts "Another verb ending with -ing:"
verb_ing2 = gets.chomp
#Look at the verb_ing2 example in the madlib part below - there is another way of putting the string value into the text that prints out! :)

puts "How old are you?"
number = gets.chomp
#This string is a number so we can't just use a + sign in the madlib below. We have to use #{example} in order to print the number in the string.

puts "What's your hometown?"
hometown = gets.chomp

puts "One night something really " + adjective + " happened at the library. The characters in the stories started " + verb_ing + " from their books! " + character + " climbed into Charlotte's Web and started #{verb_ing2} with Wilbur the Pig! Next time, you better burn all #{number} books. I don't think we're in " + hometown.capitalize + " any more."