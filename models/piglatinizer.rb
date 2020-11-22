class PigLatinizer
    attr_reader :text

    def initialize(text = nil)
        @text = text
    end

    def piglatinize2
        @text = text
        #binding.pry
        @text.split.map do |word|
            if /^[aeiou]/i.match(word)
                "#{word}way"
            else
                parts = word.split(/([aeiou].*)/)
                "#{parts[1]}#{parts[0]}ay"
            end
        end.join(" ")
                
    end

    def piglatinize(text)
        @text = text
        #binding.pry
        @text.split.map do |word|
            if /^[aeiou]/i.match(word)
                "#{word}way"
            else
                parts = word.split(/([aeiou].*)/)
                "#{parts[1]}#{parts[0]}ay"
            end
        end.join(" ")
                
    end


end