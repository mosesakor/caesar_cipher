#Caesar's cipher implementation

=begin
def caesar(text, shift)
    encrypt_text = []
    text.split("").each do |char|
        if char.ord >= 97 && char.ord <= 122
            encrypt_text.push(((char.ord - 97 + shift) % 26 + 97).chr)
        elsif char.ord >= 65 && char.ord <= 90
            encrypt_text.push(((char.ord - 65 + shift) % 26 + 65).chr)
        else 
            encrypt_text.push(char)
        end
    end

    puts encrypt_text.join("")
    return encrypt_text.join("")
end

caesar("What a string!", 1)
=end

class Caesar

    def initialize
    end

    def caesar_cipher(text, shift_factor)
        encrypted_text = []

        text.split("").each do |char|
            encrypted_text << shift(char, shift_factor)
        end
        encrypted_text.join("")
    end

    def shift(char, shift_factor)
        if lower_case?(char)
            (((char.ord - 97 + shift_factor) % 26 + 97).chr)
        elsif upper_case?(char)
            (((char.ord - 65 + shift_factor) % 26 + 65).chr)
        else
            char
        end
    end


    def lower_case?(char)
        return true if char.match? (/[a-z]/)
        false
    end

    def upper_case?(char)
        return true if char.match? (/[A-Z]/)
        false
    end

end

test = Caesar.new
p test.caesar_cipher("Hello, World", 5)


    




