require 'pry'

class PigLatinizer

    attr_accessor :igpay_atinlay

    def initialize
        # @text = text
    end

    def count_of_vowels
        text.scan(/[aeiou]/).count
    end

    def count_of_consonants
        text.scan(/[bcdfghjklmnpqrstvwxyz]/).count
    end


    def piglatinize(text)
        @vowels = ["a","e", "i", "o", "u"]
        @text = text
        @block = []
        @words = @text.split(' ')
        @words.each do |w| 
            if @vowels.include?(w.downcase[0])
                @new_text = w+"way"
            elsif @vowels.include?(w[1])
                @new_text = w[1..-1]+w[0]+"ay"
            elsif @vowels.include?(w[2])
                @new_text = w[2..-1]+w[0..1]+"ay"
            elsif @vowels.include?(w[3])
                @new_text = w[3..-1]+w[0..2]+"ay" 
            end
            # binding.pry
            @block << @new_text
        end
        @block.join(' ')
    end

end