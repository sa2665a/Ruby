puts "Write a sentence"
sentence = gets.chomp!
Puntos = '.'
Comas = ','

def sort_words(sentence)
    sentence_array = sentence.split(" ")
    new_array = []
    
    for word in sentence_array
        if (word.include?(Puntos))
            word = word.delete(Puntos)
        end

        if (word.include?(Comas))
            word = word.delete(Comas)
        end

        new_array << word

    end

    comparing(new_array)
end

def comparing(new_array)

    new_array = new_array.sort

    new_array
end

puts sort_words(sentence)