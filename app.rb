def substrings(string)
    dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
    nb = 0
    result = {}
    dictionary.each do |substring|
        string.downcase.split(" ").each do |word|
            if word.include?(substring)
                result[substring].nil? ? result[substring] = 1 : result[substring] += 1
            end
        end
    end
    puts result
end

print "Put a string you want to check:"
string_check = gets.chomp
puts substrings(string_check)