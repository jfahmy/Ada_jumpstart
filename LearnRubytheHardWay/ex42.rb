## Animal is-a object, look at the extra credit
class Animal
end

## Dog is-a Animal
class Dog < Animal

  def initialize(name)
    ##Dog has a name
    @name = name
  end
end

## Cat is-a Animal
class Cat < Animal

    def initialize(name)
      ##Cat has-a name
      @name = name
    end
end

## Class is-a person
class Person

  def initialize(name)
    ## Person has-a name
    @name = name

    ## Person has-a pet of some kind
    @pet = nill
  end

  attr_accessor :pet
end

## The Employee is a person
class Employee < Person

  def initialize(name, salary)
    ## Employee has-a name - call super with attribute name?
    super(name)
    ## Employee has-a salary
    @salary = salary
  end

end

## Class Fish??
class Fish
end

# class Salmon is-a fish
class Salmon < Fish
end

# class Halibut is-a Fish
class Halibut < Fish
end

# rover is-a Dog
rover = Dog.new("Rover")

#Satan is a cat that has the name Satan
satan = Cat.new("Satan")

# Mary is a person
mary = Person.new("Mary")

## From Mary get the pet attribute and set to Satan
mary.pet = satan

#Frank is-a Employee that has the name Frank and the salary 12000
frank = Employee.new("Frank", 120000)

# From frank, get the pet attribute and set it to rover
frank.pet = rover

##Flippter is-a Fish
flipper = Fish.new()

#flipper is-a Salmon
crouse = Salmon.new()

##harry is-a Halibut
harry = Halibut.new()
