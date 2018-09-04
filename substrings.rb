def substrings(newstring)
  dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
  breakstring = newstring.downcase
  my_substrings = {}
  string_count = 0
  string_value = ''
  dictionary.each {|x|
    if breakstring.include?(x)
      then string_count = breakstring.scan(/#{x}/).length
        string_value = x
        my_substrings.store(string_count, string_value)
    end
  }
  puts my_substrings
end

substrings('Low Go on the horn gO howdy low it go howdy')
