filename = ARGV.first
# We are setting the file name that you input in the terminal 
# equal to the variable "filename"


# We are creating the file object txt, which is not the files content
#but it allows us to act on the file
txt = open(filename)


#We are printing the filename, which is what we typed 
# into the terminal earlier
puts "Here's your file #{filename}"
#We are calling the read method on the txt object and printing this
print txt.read

txt = close(filename)


# We are asking the user for the name of the file and setting this to
# the variable file_again
print "Type the filename again: "
file_again = $stdin.gets.chomp

#We are opening file again and setting it equal to txt_again
txt_again = open(file_again)

# We are calling the read method and printing the content of the file again
print txt_again.read

txt_again = close(file_again)
