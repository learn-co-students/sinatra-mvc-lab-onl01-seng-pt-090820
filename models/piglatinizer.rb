
class PigLatinizer

    # def initialize(words)
    #     self.piglatinize(words)
    # end

    def piglatinize(words)
        array_of_words = words.split(" ")
        piglatinized = []
        array_of_words.each do |word|
            letter_array = word.split("")
            if letter_array.first.scan(/[aeiouAEIOU]/).count == 1
                piglatinized << letter_array.join + "way"
            else  
                until letter_array.first.scan(/[aeiou]/).count == 1 do
                    letter_array << letter_array.shift  
                end
                piglatinized << letter_array.join + "ay"
            end
        end
        piglatinized.join(" ")
    end


end