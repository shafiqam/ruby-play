=begin
Implement a Caesar cipher that takes in a string and the shift factor and then outputs
the modified string using a right shift.
=end

def caesar_cipher(string, shift_factor)
  modified_str = ''

  string.each_char do |char|
    # A-Z (65-90), a-z (97-122)
    ascii = char.ord # get the ASCII value

    # shift only if alphabet, else add char to modified_str
    if (ascii.between?(65, 90) || ascii.between?(97, 122))
      # shift ascii value to the right by the factor
      new_ascii = ascii + shift_factor

      # rotate the ascii value if out of alphabet bounds, both uppercase and lowercase
      if (new_ascii > 90 && ascii.between?(65, 90)) || (new_ascii > 122 && ascii.between?(97, 122))
        new_ascii -= 26
      end

      # gets the char using UTF-8 encoding
      cipher_char = new_ascii.chr(Encoding::UTF_8)
      modified_str << cipher_char
    else
      modified_str << char
    end
  end

  puts modified_str
end

caesar_cipher("What a string!", 5)
# "Bmfy f xywnsl!"
