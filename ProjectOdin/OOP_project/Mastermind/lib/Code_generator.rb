class Code_generator
  attr_accessor :sequence

  def initialize
    @sequence = generate_random
  end

  #generating a random array which will be stored for the game
  def generate_random
    set_options = ["R", "G", "Y", "B", "P", "T"]
    Array.new(4) { set_options.sample }
  end

end
