class PigLatinizer
    def change(string)
        vowels = %w[a e i o u A E I O U]

        if(string.length == 1)
            result =  string + "way"
        else
            if(vowels.include?(string[0]))
                result = string + "way"
            elsif(vowels.include?(string[1]))
                result = string[1..string.length - 1] + string[0] + "ay"
            elsif(vowels.include?(string[2]))
                result = string[2..string.length - 1] + string[0..1] + "ay"
            else
                result = string[3..string.length - 1] + string[0..2] + "ay"
            end
        end

        return result
    end

    def piglatinize(string)
        result = ""
        words = []
        string.split(" ").each do |word|
            words.push(self.change(word))
        end
        words.each_with_index do |word, index|
            if(index == words.length - 1)
                result += word
            else
                result += word + " "
            end
        end

        return result
    end
end