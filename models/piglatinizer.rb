class PigLatinizer

    def piglatinize(input_str)
        input_str.split(" ").length == 1 ? piglatinze_word(input_str) : piglatinze_sentence(input_str)
    end

    def consonant?(char)
        !char.match(/[aAeEiIoOuU]/)
    end

    def piglatinze_word(word)
        if !consonant?(word[0])
            word = word + "w"
        elsif consonant?(word[0]) && consonant?(word[1]) && consonant?(word[2])
            word = word.slice(3..-1) + word.slice(0,3)
        elsif consonant?(word[0]) && consonant?(word[1])
            word = word.slice(2..-1) + word.slice(0,2)
        else
            word = word.slice(1..-1) + word.slice(0)
        end
        word << "ay"
    end

    def piglatinze_sentence(sentence)
        sentence.split.collect {|word| piglatinze_word(word)}.join(" ")
    end



end