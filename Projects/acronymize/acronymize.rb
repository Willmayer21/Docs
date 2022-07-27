# Acronym
# STEPS
# 1. split the sentence into words
# 1.1. store the words in an array
# 2. take the first letter of EACH word
# 3. capitalize EACH letter
# 4. combine all letters
# return

def acronymize(sentence)
  words = sentence.split(' ') # words : ["As", "soon", "As", "Possible"]
  first_alphabets = []
  words.each do |word|
    first_alphabets << word[0].upcase # first_alphabets.push(word[0].upcase)
  end
  # first_alphabets : ['A','S','A','P']
  return first_alphabets.join('')
  # new_word = first_alphabets.join('')
  # return new_word

  # what if we put [""] instead of (""). will it make a change?
end

# puts 'enter sentence'
# sentence = gets.chomp
# puts acronymize(sentence)
puts acronymize('Frequently Asked Questions') # => 'FAQ
puts acronymize('     ')                      # => ''
puts acronymize('as soon as possible')        # => 'ASAP'
puts acronymize('')                           # => ''
puts acronymize('we are coding right now')    # => 'WACRN'
