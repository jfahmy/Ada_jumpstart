class Lexicon

  def self.convert_number(object)
    begin
      return Integer(object)
    rescue
      return 'error'
    end
  end

  def self.scan(user_input)
    sentence = []
    direction = ['north', 'south', 'east', 'west', 'down', 'up', 'left', 'right', 'back']
    verb = ['go', 'stop', 'kill', 'eat']
    stop = ['the', 'in', 'of', 'from', 'at', 'it']
    noun = ['door', 'bear', 'princess', 'cabinet']

    user_input = user_input.split

      user_input.length.times do |index|
          if direction.include? user_input[index]
            sentence << ['direction', user_input[index]]
          elsif verb.include? user_input[index]
            sentence << ['verb', user_input[index]]
          elsif stop.include? user_input[index]
            sentence << ['stop', user_input[index]]
          elsif noun.include? user_input[index]
            sentence << ['noun', user_input[index]]
          elsif (convert_number(user_input[index])) != 'error'
            sentence << ['number', user_input[index].to_i]
          else
            sentence << ['error', user_input[index]]
          end
      end

      return sentence

  end
end
