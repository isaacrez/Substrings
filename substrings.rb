
def substrings(sentence, dictionary)
    sentence.downcase!
    substr = {}
    for word in dictionary
        count = find_occurences(word, sentence)
        substr[word] = count if 0 < count
    end
    return substr
end

def find_occurences(word, sentence)
    upper_bound = sentence.length
    lower_bound = word.length
    count = 0

    0.upto(upper_bound - lower_bound) { |i| 
        count += 1 if sentence.slice(i, lower_bound) == word
    }

    return count
end
