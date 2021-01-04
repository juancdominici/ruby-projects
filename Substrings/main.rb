dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substrings (string, dict)
    count = Hash.new(0)

    dict.each do |word|
        count[word] = string.scan(/(?=#{word})/i).count if string.match(/(#{word})/i)
    end


    puts count
end

substrings("Below", dictionary)
substrings("Howdy partner, sit down! How's it going?", dictionary)