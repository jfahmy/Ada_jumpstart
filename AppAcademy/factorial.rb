=begin
The factorial of a number is the product of all numbers
from 1 to that number. But the factorial of 1 or 0 is always
1 so we start our method by handling these exceptions. Then,
we multiple num by itself minus 1 minus itself, minus another 1 minus itself,
etc., until we are down to 1 

=end
def recur_factorial(num)
#handling 1 and 0 exceptions
 if num == 0 || num == 1
   1
#calling recur_factorial recursively and implicitly returning
# num when it reaches the end
 else
   num * recur_factorial(num - 1)
 end
end

puts "let's play recursively"
puts recur_factorial(6)


#solving the same factorial problem iteratively
def factorial(num)
# taking care of 0 and 1 factorial exceptions by returning 1
	if num == 0 || num == 1
   	1
   else
      # creating new variable that we will return after mutliplying the integers
      new_num = 1
      # we use ruby's times loop here because our goal is to return the product
      #of each integer from 1 to num. we could have used a while loop with a counter, but this seems a little more elgant to me
   	num.times do |n|
         #mutliplying each integar by the number stored in new_num
         #we need the n plus one here so that the first thing we multiply by
         # here is a 1 and the last thing we multiple by is the value of num
         # (remember - because ruby times loops start at 0! like array indexes)
         new_num *= (n + 1)
      end
      #implicit return of new num
      new_num
   end
end

puts "let's play factorial the normal way"
puts factorial(6)
