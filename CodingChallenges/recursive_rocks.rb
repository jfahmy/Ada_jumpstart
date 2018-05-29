#Recursion example for finding largest in an array from bastard's book of Ruby
def rock_judger(rocks_arr)
  if rocks_arr.length <= 2 #this is our base case
    a = rocks_arr[0]
    b = rocks_arr[-1]
  else
    a = rock_judger(rocks_arr.slice!(0,rocks_arr.length/2))
    b = rock_judger(rocks_arr)
  end

  #some syntactic sugar for returning the greater value between a and b
  return a > b ? a : b

end
