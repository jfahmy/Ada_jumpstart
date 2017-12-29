#Creating the map class, that each restaraunt scene will be a subclass of
# it knows to do something called enter and in this case just immediately exits
class Scene
  def enter()
    raise "Scene 'enter' must not be used directly. Please subclass Scene and
            provide a meaningful implementation for the 'enter' method"
    exit(1)
  end
end

#This class will run the game from scene to scene?
class SceneRunner

  #Creating the object scene_map
  def initialize(scene_map)
    @scene_map = scene_map
  end

  def play()
    current_scene = @scene_map.opening_scene()
    last_scene = @scene_map.next_scene('winner')

    while current_scene != last_scene
      next_scene_name = current_scene.enter()
      current_scene = @scene_map.next_scene(next_scene_name)
    end

    # Each room has the enter() function which begins the scene play instructions
    # when the below is called with the name of the
    current_scene.enter()
  end
end

# Notice that each room has enter() which begins the scene play instructions
# Regarless of user input a string will be returned at the conclusion
# Which will give the user either the death scene, a reference to the next room,
# a repeat of the current scene (if they input something invalid), or the final winning scene


class EndGame < Scene

  @@loser_quips = ["You'll never amount to anything! Move back in with your mother.",
    "My pet parakeet could do better. Get out of here!",
    "What a loooooooooooser! Give up, kid.",
    "Maybe you should go work at Cane's chicken instead. Game over, dude."
  ]

  def enter()
    #we're using length here but we could have also used rand(0..2), but below is more flexible because we can add more quips
    puts "------------------------------------"
    puts @@loser_quips[rand(0..(@@loser_quips.length - 1))]
    exit(1)
  end
end

class HotChicken1 < Scene

  def enter()
    puts "------------------------------------"
    puts "You're in Hot Chicken in the North Market before they've opened for the day."
    puts "You're the first one in this Saturday. The owner looks like Elvis,"
    puts "facing you down, you're shaking before the Columbus food Rockstar."
    puts "He asks you, skeptically \"So, you want to be a chef?\""
    puts "(type yes or no) >"

    action = $stdin.gets.chomp

      if action == "Yes" || action == "YES" || action == "yes"
        puts "Fine. You can give it a try."
        return "hot_chicken2"

      elsif action == "No" || action == "NO" || action == "no"
        return 'end_game'

      else
        puts "ANSWER NOT VALID"
        return 'hot_chicken1'
      end
  end

end

class HotChicken2 < Scene

  def enter()
    puts "------------------------------------"
    puts "Recently, I have heard rumors of a dish - so fantastic - that it causes"
    puts "babies to give up crying. It's the breading, the magic is in the breading, I hear."
    puts "Go to La Tavola and retrieve me this dish."
    puts "Do you accept the quest?"
    puts "(type yes or no) >"

    action = $stdin.gets.chomp

      if action == "Yes" || action == "YES" || action == "yes"
        return "la_tavola"

      elsif action == "No" || action == "NO" || action == "no"
        return 'end_game'

      else
        puts "ANSWER NOT VALID"
        return 'hot_chicken2'
      end
    end
end

class LaTavola < Scene

  def enter()
    puts "------------------------------------"
    puts "You approach the menu written in chalk above the bar La Tavola."
    puts "There are only a few items left on the menu. The kitchen staff stares at you."
    puts "What will you order?"
    puts "(Eggplant Parmesan, Calf\'s Liver, or Brown Butter Gnocchi) >"

    action = $stdin.gets.chomp

    if action == "Calf\'s Liver"
      puts "Calf\'s Liver acquired."
      return 'hot_chicken3'
    elsif action == "Eggplant Parmesan"
      puts "Babies hate Eggplant, you fool."
      return 'end_game'
    elsif action == "Brown Butter Gnocchi"
      puts "That's not even breaded, you dork."
      return 'end_game'
    else
      puts "ANSWER NOT VALID"
      return 'la_tavola'
    end

  end

end

class HotChicken3 < Scene

  def enter()
    puts "------------------------------------"
    puts "You return to find the Hot Chicken God waiting impatiently."
    puts "\'Finally, the dish\'. He takes a bite."
    puts "\'Incredible! Outstanding!\' You wait awhile as he eats"
    puts "-----------------------------------"
    puts "-----------------------------------"
    puts "\'You're still here? Fine, there's something else I need.\'"
    puts "\'There's a story of a rare schezuan pepper that only one man grows.\'"
    puts "\'Go to Hong Kong House and retrieve me this pepper.\'"
    puts "Do you accept the quest?"
    puts "(type yes or no) >"

    action = $stdin.gets.chomp

    if action == "Yes" || action == "yes" || action == "YES"
      return 'hong_kong_house'
    elsif action == "No" || action == "no" || action == "NO"
      return 'end_game'
    else
      puts "ANSWER NOT VALID"
      return 'hot_chicken3'
    end

  end
end

class HongKongHouse < Scene

  def enter()
    puts "------------------------------------"
    puts "You approach an inconspicous strip mall. Hong Kong House looks like an"
    puts "unassuming Chinese buffet. You enter..."
    puts "You ask around for the owner, mumbling to the servers about a schezuan pepper."
    puts "Eventually, they understand what you're getting at. You're led into a back room."
    puts "An old man is sitting at a table. He is silent and waits for you to sit down"
    puts "across for him. You sit and he says \'Do you seek the pepper?\'"
    puts "You nod vigorously. He says \'First, we shall play a game\'"
    puts "\'There are hundreds of varietals of schezuan peppers.\'"

    action = 0

    while action != 8
    puts "------------------------------------"
      puts "\'Guess the heat level of my pepper, from 1 to 10\'"
      puts "(1, 2, 3, 4, 5, 6, 7, 8, 9 or 10) > "
      action = $stdin.gets.chomp
      pepper = '8'
      #user has unlimited number of guesses
        if action == pepper
          puts "Goodness, you soothsayer. You have guessed it."
          puts "Schezuan Pepper is added to inventory."
          return 'hot_chicken4'
        elsif action != pepper
          puts "Incorrect, guess again."
        end
      end
    end
end





class HotChicken4 < Scene

  def enter()
    puts "------------------------------------"
    puts "\'Is this it?\' Asks the hot chicken God as you present him"
    puts "with the glowing Scheuzuan pepper. \'Phenomenal. Incredible.\'"
    puts "..................................."
    puts "You're still here?"
    puts "(Yes or No) >"

    action = $stdin.gets.chomp

    if action == "Yes" || action == "yes" || action == "YES"
      return 'final_test'
    elsif action == "No" || action == "no" || action == "NO"
      return 'end_game'
    else
      puts "ANSWER NOT VALID"
      return 'hot_chicken4'
    end

  end
end

class FinalTest < Scene

  def enter()
    puts "------------------------------------"
    puts "\'Okay, listen, I'm willing to invest in your restaraunt."
    puts "If only to get you off my back, I think, you're probably ready."
    puts "Just one final test. I need you to prove your Columbus food acumen."
    puts "Ready?\'"
    puts "(Yes or No) >"

    action = $stdin.gets.chomp

    if action == "Yes" || action == "yes" || action == "YES"
      puts "------------------------------------"
      puts "What do you order at Oreilleys?"
      puts "(Chicken Fingers, Black Pepper Burger, Classic Rueben) >"
      answer1 = $stdin.gets.chomp
      puts "Where do you go for killer pizza?"
      puts "(Borgata, Harvest, Hungry Howies) >"
      answer2 = $stdin.gets.chomp
      puts "Where are the most authentic Tacos?"
      puts "(Candado, Los Gauchos, Local Cantina) >"
      answer3 = $stdin.gets.chomp
      if answer1 == "Black Pepper Burger" && answer2 == "Borgata" && answer3 == "Los Gauchos"
        puts "\'You go it! I'm surprised by your good taste.\'"
        puts "Investment acquired. You might amount to something afterall!"
        return 'winner'
      elsif answer1 == "Black Pepper Burger" && answer2 == "Borgata"
        puts "'\'Ya need to study up on tacos\'"
        puts "Try again?"
        return 'final_test'
      elsif answer1 == "Black Pepper Burger" && answer3 == "Los Gauchos"
        puts "\'Ya need to study up on Pizza.\'"
        puts "Try again?"
        return 'final_test'
      elsif answer2 == "Borgata"  && answer3 =="Los Gauchos"
        puts "\'Ya need to study up on your Burgies\'"
        puts "Try again?"
        return 'final_test'
      else
        puts "\'You got two out of the three wrong. Eat some more food and again another day man.\'"
        return 'end_game'
      end
    elsif action == "No" || action == "no" || action == "NO"
        return 'end_game'
    else
      puts "ANSWER NOT VALID"
      return 'hot_chicken4'
    end

  end
end

class Winner < Scene
  def enter()
    puts " --------------------------------"
    puts "YOU WIN !!!!"
  end
end

  #This is creating the class map
class Map
  # setting up hashes which will later be used to... ?
  # @@ is a class variable meaning that it's global or static and can't be changed and that
  # if one object instance changes the value of the variable that new value will
  # NOT change for all other objects
  @@scenes = {
    'hot_chicken1' => HotChicken1.new(),
    'hot_chicken2' => HotChicken2.new(),
    'la_tavola' => LaTavola.new(),
    'hot_chicken3' => HotChicken3.new(),
    'hong_kong_house' => HongKongHouse.new(),
    'hot_chicken4' => HotChicken4.new(),
    'final_test' => FinalTest.new(),
    'winner' => Winner.new(),
    'end_game' => EndGame.new(),
  }

  def initialize(start_scene)
    @start_scene = start_scene
  end

  # call the next_scene function  and give it a parameter of next_scene_name
  # This looks at the hash using next_scene_name as the key and gets the
  # corresponding value from the @@scenes hashes
  def next_scene(scene_name)
    val = @@scenes[scene_name]
    return val
  end

  def opening_scene()
    return next_scene(@start_scene)
  end

end

# creating the object a_map using the instructions in class Map, calling HotChicken1.new(),
a_map = Map.new('hot_chicken1')
# creating object a_game using the instruction from class SceneRunner
a_game = SceneRunner.new(a_map)
#
a_game.play()
