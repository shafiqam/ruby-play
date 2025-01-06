=begin
Implement a method #substrings that takes a word as the first argument and then
an array of valid substrings (your dictionary) as the second argument. It should
return a hash listing each substring (case insensitive) that was found in the original
string and how many times it was found.
=end

def substrings(input_str, dictionary)
  # create a hash with a default value of zero, easy to count
  hash = Hash.new(0)

  # check if each string is a case-insensitive substring of the original word
  dictionary.each do |str|
    # scan, searches for str in the input_str (downcase to be case-insensitive),
    # and returns the matches in an arrays
    matches = input_str.downcase.scan(str)
    hash[str] += matches.size unless matches.empty?
  end

  hash
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own",
  "part","partner","sit"]
puts substrings("below", dictionary)
# { "below" => 1, "low" => 1 }

# Next, make sure your method can handle multiple words:
puts substrings("Howdy partner, sit down! How's it going?", dictionary)
# { "down" => 1, "go" => 1, "going" => 1, "how" => 2, "howdy" => 1, "it" => 2, "i" => 3,
# "own" => 1, "part" => 1, "partner" => 1, "sit" => 1 }
