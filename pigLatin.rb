puts "Please enter a few words or a sentance: "

input = "Different than before" #gets.chomp.downcase

# Translate one word to pig latin
def translate_word(word)
    @part = word.split(/([aeoiu].*)/)
    return "#{@part[1]}#{@part[0].downcase}ay"
end
#breakpoint puts translate_word(input)

# Translate several words in a string by translating them individually first
def translate_sentance(sentance)
    @only_words = sentance.split(" ")
    @only_words.length.times do |word|
        @translated[word] = translate_word(@only_words[word])
    end
    #breakpoint puts @only_words[word]
    return @translated.join(" ")
end
puts translate_sentance(input)