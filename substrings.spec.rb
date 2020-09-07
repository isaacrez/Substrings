require('./substrings.rb')

def test(expected, actual)
    puts expected == actual ? "Passed" : "Failed"
    puts "\n"
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

puts "Single word"
sentence = "below"
expected = {"below" => 1, "low" => 1}
result = substrings(sentence, dictionary)
test(expected, result)

puts "Sentence"
sentence = "Howdy partner, sit down! How's it going?"
expected = { "down" => 1, "go" => 1, "going" => 1, "how" => 2, "howdy" => 1, "it" => 2, "i" => 3, "own" => 1, "part" => 1, "partner" => 1, "sit" => 1 }
result = substrings(sentence, dictionary)
test(expected, result)
