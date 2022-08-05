def caesar_cipher(string, factor)
        cipher  = ([*('a'..'z')].zip([*('a'..'z')].rotate(factor)) + [*('A'..'Z')].zip([*('A'..'Z')].rotate(factor))).to_h
        string.chars.map { |c| cipher.fetch(c, c) }.join
       end
