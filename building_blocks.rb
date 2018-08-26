def caesars_cipher(string, shift_num)
  cipher_string = ''
  if string.is_a?(String)
    string.each_byte { |c|
      if c == 32
      cipher_string << c.chr
      else
      ciph = c + shift_num
        if (65..90).include?(ciph) || (97..122).include?(ciph)
          cipher_string << ciph.chr
        else
          if (65..90).include?(c)
            a = (90 - c)
            b = (shift_num - a)
            newciph = (65 + b)
            cipher_string << newciph.chr
          elsif (97..122).include?(c)
            a = (122 - c)
            b = (shift_num - a)
            newciph = (97 + b)
            cipher_string << newciph.chr
          end
        end
      end
      }
    puts cipher_string
  else
    puts 'Please include valid input'
  end
end

caesars_cipher('My name iS bob', 15)
caesars_cipher('how IS your CAT', 3)
caesars_cipher('i am orb', 8)
caesars_cipher('TORSEY THE TORSO HORSE', 7)
