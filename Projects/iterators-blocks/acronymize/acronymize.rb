def acronymize(sentence)
  # split the words
  array = sentence.split(' ')
  # take the first letters 
  # (iterate over the array and take first
  #  letter using string index)
  first_letter = array.map do |word|
    word[0].upcase
  end
  # Join elements together
  # upcase it

  first_letter.join
end
