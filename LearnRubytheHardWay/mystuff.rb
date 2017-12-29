class MyStuff

  def initialize(gifts)
    @gifts = gifts
  end

  attr_reader :gifts

  def christmas()
    puts "Christmas love, all around the tree:"
  end

  def list_my_things()
    puts @gifts
  end

end

#this is the instantiate operation, and we're basically calling
# the MyStuff class to get stuff from it. But what's really happening is
# ruby look at MyStuff to see that it's a class you have defined
# ruby crafts an empty object with all the functions we've defined with def
# if you have an initialize then it calls that function to initialize your newly created
# empty object. Then the @ symbol (and whatever is attched to it - @candles)
# is telling ruby this is a variable that it part of this object.
# Ruby uses variables like @ and $ to say where variables are located
# @candles basically means "the object is candles"
# Instantiation is really creating an object from the class. The class is like a blueprint
# for how to create it.

hillary = MyStuff.new("Fancy Yarns")
oliveAndApple = MyStuff.new("Winter Fashion")
maja = MyStuff.new("Flower Vase (handmade)")
clay = MyStuff.new("watch")

hillary.list_my_things()
oliveAndApple.list_my_things()
maja.list_my_things()
