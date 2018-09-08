dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substrings(newstring, dictionary)
  freq_substrings = Hash.new(0)
  smallstring = newstring.downcase
  dictionary.each do |word|
    if smallstring.include?(word)
      freq_substrings[word] = smallstring.scan(word).size
    end
  end
  puts freq_substrings
end

substrings('Low Go on the horn gO howdy low it go howdy down slow', dictionary)
substrings('Low Go on the horn gO howdy it go howdy down slow', dictionary)
substrings('you my partner is down', dictionary)
