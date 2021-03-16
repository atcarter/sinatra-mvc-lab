class PigLatinizer


    def initialize
        
    end

    def piglatinize(text)

        arr = text.split(' ')
        string = ""
        arr_vowels = ['a', 'e', 'i', 'o', 'u']
        arr_doubles = ["bl", "br", "ch", "ck", "cl", "cr", "dr", "fl", "fr", "gh", "gl", "gr", "ng", "ph", "pl", "pr", "qu", "sc", "sh", "sk", "sl", "sm", "sn", "sp", "st", "sw", "th", "tr", "tw", "wh", "wr"]
        arr_triples = ["nth", "sch", "scr", "shr", "spl", "spr", "squ", "str", "thr"]

        arr.each do |word|
            if arr_vowels.include?(word[0].downcase)
                word = word + "way "
                string += word
            elsif arr_triples.include?(word.slice(0,3).downcase)
                letters = word.slice(0,3) + "ay "
                word = word.slice(3, word.length) + letters
                string += word
            elsif arr_doubles.include?(word.slice(0,2).downcase)
                letters = word.slice(0,2) + "ay "
                word = word.slice(2, word.length) + letters
                string += word
            else
                word = word.slice(1, word.length) + word[0] + "ay "
                string += word
            end
        end

        string.strip
    end
    

end