def caesar_cipher(string, number) 
    alpha = ('a'..'z').to_a
    codedtext = []
    string.each_char do |char|
        if alpha.include?(char)
            index = alpha.index(char)
            # puts index
            mod = (index + number).modulo(26)
            # puts mod
            codedtext << alpha[mod]
            # puts codedtext
        elsif alpha.include?(char.downcase)
            index = alpha.index(char.downcase)
            mod = (index + number).modulo(26)
            codedtext << alpha[mod].upcase
        else
            codedtext << char
        end
    end

    return codedtext.join
end

puts caesar_cipher("What a string!", 5)