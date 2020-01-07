class PigLatinizer
    
    def initialize
    end 

    def piglatinize(text)
        individual_words = text.split(" ")
        new_words = []
        individual_words.each do |word|
            if word.start_with?('a','e','i','o','u', 'A','E','I','O','U')
                word += "way"
            else 
                if ['a','e','i','o','u'].include?(word[1])
                    addition = word[0] + "ay"
                    word[0] = ""
                else
                    if ['a','e','i','o','u'].include?(word[2])
                        addition = word[0] + word[1] + "ay"
                        word[0] = ""
                        word[0] = ""
                    else 
                        addition = word[0] + word[1] + word[2] + "ay"
                        word[0] = ""
                        word[0] = ""
                        word[0] = ""
                    end 
                end
                word += addition
            end 
            new_words << word 
        end 
        if new_words.length == 1
            return new_words[0]
        else 
            new_string = ""
            index = 0
            new_words.each do |word|
                new_string += word += " "
            end
            new_string[-1] = ""
            new_string 
        end
    end
end 