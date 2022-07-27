def encrypt(string)
  # define an array (A..Z)
  alphabet = ("A".."Z").to_a
  # split the letters from the string
  result = string.upcase.split("").map do |letter|
    # iterate over the letters
    # compare letter index with alphabet index and shift it
    index = alphabet.index(letter)
    # if index.nil?
    #   letter
    # else
    #   alphabet[index - 3]
    # end
    index.nil? ? letter : alphabet[index - 3]
  end
  # join the letters
  p result.join
end

encrypt("THE QUICK BROWN FOX JUMPS OVER THE LAZY DOG")

# "QEB NRFZH YOLTK CLU GRJMP LSBO QEB IXWV ALD"
