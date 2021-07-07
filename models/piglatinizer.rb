class PigLatinizer
   # attr_reader :pig_latin
   
    def piglatinize(text)
        words = text.split(" ")
        new_words = words.map do |word|
            one_word(word)
        end

       new_words.join(' ')    
    end

    def one_word(word)
        letters = word.split('')
        consonants = ""
        letters.each do |letter|
            if letter =~ /[bcdfghjklmnpqrstvwxyzBCDFGHJKLMNPQRSTVWXYZ]/
                consonants += letter
            else
                break
            end
        end

        if consonants.length > 0
            tail = word[consonants.length, word.length]
            pig_word = tail + consonants + "ay"
        else
            pig_word = word + "way"
        end

        pig_word 
    end
end