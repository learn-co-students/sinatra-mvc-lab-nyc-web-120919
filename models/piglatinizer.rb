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



   
   
   
#     def most_used_letter
#       s1 = text.gsub(/[^a-z]/, '') # gets rid of spaces
#       arr = s1.split('')
#       arr1 = arr.uniq
#       arr2 = {}
   
#       arr1.map do |c|
#         arr2[c] =  arr.count(c)
#       end
   
#       biggest = { arr2.keys.first => arr2.values.first }
   
#       arr2.each do |key, value|
#         if value > biggest.values.first
#           biggest = {}
#           biggest[key] = value
#         end
#       end
   
#       biggest
#     end
#   end