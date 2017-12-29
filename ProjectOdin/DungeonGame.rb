class Dungeon
  #attr_accessor method allows us to both write and read the "player" variable
  attr_accessor :player

  def initialize(player)
    @player = player
    @rooms = {}
  end

  #method in the dungeon class that creates rooms
  def add_room(reference, name, description, connections)
    @rooms[reference] = Room.new(reference, name, description, connections)
  end

  def start(location)
    @player.location = location
    show_current_description
  end

  #finds the room based on the players location and calls find room in Dungeon
  # to return the room that's reference matches the location
  #then calls full description method on that reference
  def show_current_description
    puts find_room_in_dungeon(@player.location).full_description
  end

  def find_room_in_dungeon(reference)
    @rooms[reference]
  end

  def find_room_in_direction(direction)
    find_room_in_dungeon(@player.location).connections[direction]
  end

=begin
Go method used to navigate dungeon. Takes just a direction argument (like north west
etc.) and then resets the player.location attribute using the find_room_in_direction
method which returns the relevant reference to the next destination room
=end
  def go(direction)
    puts "You go " + direction.to_s
    @player.location = find_room_in_direction(direction)
    show_current_description
  end
end

class Player
  attr_accessor :name, :location

  def initialize(name)
    @name = name
  end
end

class Room
  attr_accessor :reference, :name, :description, :connections

  def initialize(reference, name, description, connections)
    @reference = reference
    @name = name
    @description = description
    @connections = connections
  end

  def full_description
    @name + "\n\nYou are in " + @description
  end
end
=begin Struct is a shorhand way of creating a class like object blueprint
We could make these into real classes like Dungeon, and then use attr_accessor
so we can write to and store the variables like name, location, reference etc.
but with Struct we essentialy have the same functionaltiy that we would
from creating true Player and Room class
=end
#Player = Struct.new(:name, :location)
#Room = Struct.new(:reference, :name, :description, :connections)

#creating an instance of the player (which has a name)
player = Player.new("Jacqueline SantalPussy")
my_dungeon = Dungeon.new(player)

#adding rooms to our dungeon
my_dungeon.add_room(:bluecave, "Blue Crystal Cave", "Streams of blue surround you", {
  :west => :redcave, :north => :greencave
  })

my_dungeon.add_room(:redcave, "Red Lava Room", "Don't step in the lava", {
  :north => :greencave, :east => :bluecave
  })

my_dungeon.add_room(:greencave, "Emerald Cavern", "You're overwhelmed with marvelous greed", {
  :east => :bluecave, :west => :redcave
  })

#Start the dungeon by placing the player in a room of the Cave
my_dungeon.start(:bluecave)

user_input = ""

while user_input == ""
  puts "Where would you like to go? (type 'exit' to quit game)"
  user_input = $stdin.gets.chomp
    if user_input == "exit"
      break
    elsif user_input == "north"
      my_dungeon.go(:north)
    elsif user_input == "west"
      my_dungeon.go(:west)
    elsif user_input == "east"
      my_dungeon.go(:east)
    else
      puts "Does not compute! Try again!"
    end
end

#my_dungeon.go(:west)

#my_dungeon.go(:east)
