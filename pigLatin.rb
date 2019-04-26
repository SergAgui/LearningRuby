sentance = "This is different" #gets.chomp.downcase
only_words = sentance.split(" ")
only_words.each do |words|
    part = words.split(/([aeoiu].*)/)
    finished_word = "#{part[1]}#{part[0]}ay "
end
puts "#{only_words}"

