def caesar_cipher(string, num)
new_string = ""

alphabet_downcase = ("a".."z").to_a
alphabet_upcase = ("A".."Z").to_a

string.each_char do |char|
      if alphabet_downcase.include?(char)
        shift = alphabet_downcase.index(char) + num
          if shift >= alphabet_downcase.length
            shift = shift - alphabet_downcase.length
          end
          new_string += alphabet_downcase[shift]
      elsif alphabet_upcase.include?(char)
        shift = alphabet_upcase.index(char) + num
          if shift >= alphabet_upcase.length
            shift = shift - alphabet_upcase.length
          end
          new_string += alphabet_upcase[shift]
      else
        new_string += char
      end
end

new_string

end

puts caesar_cipher("test my cipher", 5)
