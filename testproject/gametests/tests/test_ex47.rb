require "ex47/game.rb"
require "test/unit"

class TestGame < Test::Unit::TestCase

  def test_room
    #This is testing the Room class we created by creating the variable gold
    # which takes name and description of the room. Then the assert_equal, which is a function
    # of the test/unit gem makes sure that gold.path and gold.name equal what we think they should equal!
    # Notice we did not give a path to this room, just a name and desription, but the object
    # does have an empty path hash
    gold = Room.new("GoldRoom",
          """This room has gold in it you can grab. There's a door to the north.""")
    assert_equal("GoldRoom", gold.name)
    assert_equal("""This room has gold in it you can grab. There's a door to the north.""", gold.description)
    assert_equal({}, gold.paths)

  end

  def test_room_paths()
    #initializing or creating room objects?
    center = Room.new("Center", "Test room in center.")
    north = Room.new("North", "Test room in the north.")
    south = Room.new("South", "Test room in the south.")


    center.add_paths({'north' => north, 'south' => south})
    #calling the go function from the room class with the path key
    #and making sure that it equals the given value with assert_equal
    assert_equal(north, center.go('north'))
    assert_equal(south, center.go('south'))
  end

  def test_map()
    start = Room.new("Start", "You can go west and down a hole.")
    west = Room.new("Trees", "There are trees here, you can go east.")
    down = Room.new("Dungeon", "It's dark down here, you can go up.")

    start.add_paths({'west' => west, 'down' => down})
    west.add_paths({'east' => start})
    down.add_paths({'up' => start})

    assert_equal(west, start.go('west'))
    # !!!????? 'east' and 'up' are set to start by the add_paths function above
    # but what about the west and down that is referenced???
    assert_equal(start, start.go('west').go('east'))
    assert_equal(start, start.go('down').go('up'))
  end

end
