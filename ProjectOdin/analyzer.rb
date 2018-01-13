#Open the file and store the text as line variable
lines = File.readlines(ARGV[0])

#gather some statistics about the text
line_count = lines.size
text = lines.join
total_characters = text.length
total_characters_without_space = text.gsub(/\s+/, '').length
word_count = text.split.length
sentence_count = text.split(/\.|\?|!/).length
paragraph_count = text.split(/\n\n/).length

# Analyze the text for keywords
stop_words = %w{the a by for of are with just but and to the my I some in or}
all_words = text.scan(/\w+/)
key_words = all_words.reject { |word| stop_words.include?(word) }
good_percentage = ((key_words.count.to_f / all_words.length.to_f) * 100).to_i

#Summarize the text by getting a set of sentences that are neither too short or too long
sentences = text.gsub(/\s+/, " ").strip.split(/\.|\?|!/)
sentences_sorted = sentences.sort_by { |sentence| sentence.length}
one_sixth = sentences_sorted.length / 6
ideal_sentences = sentences_sorted.slice(one_sixth, one_sixth)
ideal_sentences = ideal_sentences.select { |sentence| sentence =~ /is|are/ }


puts "#{word_count} words"
puts "#{line_count} lines, dude."
puts "#{total_characters} characters in this chunk of text."
puts "#{total_characters_without_space} characters without space, though."
puts "#{paragraph_count} paragraphs in this, yup."
puts "#{sentence_count / paragraph_count} sentences per paragraph (average)"
puts "#{word_count / sentence_count} words per sentence (average)"
puts "#{good_percentage}% of words are non-fluff words"
#puts "#{key_words} are the set of keywords we'll index for fulltext searching"
puts "Summary:\n\n" + ideal_sentences.join(". ")
puts "-- End of analysis"
