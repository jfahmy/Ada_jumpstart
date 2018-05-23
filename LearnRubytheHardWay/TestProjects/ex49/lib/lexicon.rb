class Lexicon

  def convert_number(object)
    begin
      return Integer(object)
    rescue
      return 'error'
    end
  end

  def scan(user_input)
    word_list = []
    direction = ['north', 'south', 'east', 'west', 'down', 'up', 'left', 'right', 'back']
    verb = ['go', 'stop', 'kill', 'eat']
    stop = ['the', 'in', 'of', 'from', 'at', 'it']
    noun = ['door', 'bear', 'princess', 'cabinet']

    user_input = user_input.split

      user_input.length.times do |index|
          if direction.include? user_input[index]
            word_list << ['direction', user_input[index]]
          elsif verb.include? user_input[index]
            word_list << ['verb', user_input[index]]
          elsif stop.include? user_input[index]
            word_list << ['stop', user_input[index]]
          elsif noun.include? user_input[index]
            word_list << ['noun', user_input[index]]
          elsif (convert_number(user_input[index])) != 'error'
            word_list << ['number', user_input[index].to_i]
          else
            word_list << ['error', user_input[index]]
          end
      end

      return word_list

  end
end

#Lexicon.new.scan()
