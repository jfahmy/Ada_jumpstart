# child is inheriting from parent class and so son.implicit()
# will also print the same message definted in parent class

class Parent

  def implicit()
    puts "PARENT implicit()"
  end
end

class Child < Parent
end

dad = Parent.new()
son = Child.new()

puts "Here the actions of the parent class are executed twice, child has nothing configured."
dad.implicit()
son.implicit()
puts "__________________________________"

# Now here we have given the child class specific instructions
# which will override it's parent class
class Parent

  def override()
    puts "PARENT override()"
  end
end

class Child < Parent
  def override()
    puts "CHILD override()"
  end
end

dad = Parent.new()
son = Child.new()

puts "Here the parent class is executed adn then the child class is executed."
dad.override()
son.override()
puts "_______________________________________"

class Parent
  def altered()
    puts "PARENT altered()"
  end
end

class Child < Parent
  def altered()
    puts "CHILD, BEFORE PARENT altered()"
    super()
    puts "CHILD, AFTER PARENT altered()"
  end

end

dad = Parent.new()
son = Child.new()
puts "the supper command here is running the parent
and then also the super altered child message"
dad.altered()
son.altered()
puts "__________________________"
