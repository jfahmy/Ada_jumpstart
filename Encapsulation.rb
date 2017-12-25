class Person
  def initialize(name, age)
    set_name(name)
    @age = age
  end

  def age
    @age
  end

  def age_diff_with(other_person)
    (self.age - other_person.age).abs
  end

  def name
    @first_name + ' ' + @last_name
  end

  private

  def set_name(name)
    first_name, last_name = name.split(/\s+/)
    set_first_name(first_name)
    set_last_name(last_name)
  end

  def set_first_name(name)
    @first_name = name
  end

  def set_last_name(name)
    @last_name = name
  end

  protected :age

end

m = Person.new("Cheesey Chuck", 34)
x = Person.new("Jack Attack", 28)
puts m.name
puts x.name

puts m.age_diff_with(x)
puts m.age
