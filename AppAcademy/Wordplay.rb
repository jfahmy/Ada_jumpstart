def wordplay(str1, str2)
  #creating the empty array variable, so that it's available to the loops we'll 
  # use below to populate this array
  array_index = []
 
 #using a times loop, where the number of times is determined by the length of #str2 method input. this will allow me to loop through each index in str2, one #at a time
 str2.length.times do |i|
   #using another times loop to iterate through each index in str1, to see if it matches the index I'm on in str2. So for this loops the index for str2 stays the same and we use the match method to see if any of the index on str1 have a match. When a match is found using our if statement then we store that in our array.
  str1.length.times do |i2|
    if str2[i].match (str1[i2])
      array_index << i2
      #This break in the loop is important to ensure that when a match is found for the index we are at in str2, that we end this second times loop and start the next iteration on that first time loop - like we are ready to start looking for matches on the next str2 index.
      break
    end
  end
end
  
  #This is important to handle cases where str2 might have some letters in common with str1, but the whole word was not available. By comparing the length of our array to the length of the str2 word, we will be able to tell whether all letters were present or not. 
  if array_index.length != str2.length
    false
  #return the indexes of where the letters in the second string occur in the first
  else
    array_index
  end
  
end

wordplay('shadowless', 'dashes')

