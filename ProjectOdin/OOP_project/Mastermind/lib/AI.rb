class AI

def initialize
@previous_rounds = []
@feedback = []
end

KEY = ["R", "G", "Y", "B", "P", "T"]

#  "empty" => :light_black,
#  "right index" => :black,
#  "wrong index" => :white
#valid = ["R", "G", "Y", "B", "P", "T"]
def breakcode(board, board_checks, round)
  if round != 0
    collect_feedback(board_checks, round)
    guess = generate_guess
    until evaluate(guess, board, board_checks) == true
      guess = generate_guess
    end
    @previous_rounds << guess
  else
    guess = generate_guess
    @previous_rounds << guess
  end

  guess
end

def generate_guess
  Array.new(4) { KEY.sample }
end

#storing feedback from the computer's last guess.
# chunking into little arrays to be accessed by our evaluate method later
def collect_feedback(board_checks, round)
  previous_round = []
  previous_round << board_checks[round-1].count("@".colorize(:black))
  previous_round << board_checks[round-1].count("@".colorize(:white))
  # debugging -puts "#{previous_round}"
  @feedback << previous_round
  # debugging puts "This is all the #{@feedback} so far"
end

#Evaluates whether it's a decent guess using feedback on previous guess as a guide
def evaluate(guess, board, board_checks)
  @previous_rounds.each_with_index do |round, idx|
      repeat_placement_needed = @feedback[idx][0]
      repeat_color_needed = @feedback[idx][1]
      count_correct = 0
      4.times do |idx2|
        if @previous_rounds[idx][idx2] == guess[idx2]
          count_correct += 1
        end
      end

      if !(count_correct >= repeat_placement_needed)
        return false
      end
  end

true
end


end
