class Parent

  def override()
    puts "PARENT override()"
  end

  def implicit()
    puts "PARENT implicit()"
  end

  def altered()
    puts "PARENT altered()"
  end
end

class Child < Parent

  def override()
    puts "CHILD override()"
  end

  def altered()
    puts "CHILD, BEFORE PARENT altered()"
    # when you call the altered function for the child class later
    # it will call the parent method and invoke it and then augment it with what you hve below too
    super()
    puts "CHILD, AFTER PARENT altered()"
  end
end

#sets the variable dad to an instance of the Parent class
dad = Parent.new()
#sets the variable son to an instance of the Child class
son = Child.new()


#calls the implicit function in parent
dad.implicit()
#calls the implicit function, and even though son has no
#implicit function it will inherit this from the parent class
son.implicit()

#calls the override function in parent
dad.override()
#calls the override function in child with it's own child function
#which will truly override the function stored inside parent.
son.override()

#calls the altered function in parent and because it's altered
# it also checks the other classes of the same type for functions and executes those
dad.altered()
#calls the altered function for child, which has a super, so it calls the parent
# and then exectues the altered function for super
son.altered()



# I think this whole series will do this:
#puts "PARENT implicit()" x2
# then print puts "PARENT override()" then puts "CHILD override()"
# puts "PARENT altered()" then "CHILD, BEFORE PARENT altered()"
# puts "PARENT altered()" then "CHILD, AFTER PARENT altered()"
