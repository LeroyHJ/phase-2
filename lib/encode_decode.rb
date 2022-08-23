def encode(plaintext, key)
  cipher = key.chars.uniq + (('a'..'z').to_a - key.chars)
  ciphertext_chars = plaintext.chars.map do |char|
    # p cipher.find_index(char)
    (65 + cipher.find_index(char)).chr
  end
  return ciphertext_chars.join
end

def decode(ciphertext, key)
  cipher = key.chars.uniq + (('a'..'z').to_a - key.chars)
  plaintext_chars = ciphertext.chars.map do |char|
    cipher[char.ord - 65]
  end
  return plaintext_chars.join
end

#  a  s  f  t  m
#  0  1  2  3  5   
#                  +65
#  65 67 68 69 70   
#                  -65
#  0  1  2  3  5


# Intended output:
#
# > encode("theswiftfoxjumpedoverthelazydog", "secretkey")
# => "EMBAXNKEKSYOVQTBJSWBDEMBPHZGJSL"
#
# > decode("EMBAXNKEKSYOVQTBJSWBDEMBPHZGJSL", "secretkey")
# => "theswiftfoxjumpedoverthelazydog"


# def test(plaintext, key)
#   cipher = key.chars.uniq + (('a'...'z').to_a - key.chars)
#   ciphertext_chars = plaintext.chars.map do |char|
#     (65 + cipher.find_index(char)).chr
#   end
#   return ciphertext_chars.join
# end

# p decode("EMBAXNKEKSYOVQTBJSWBDEMBPHZGJSL", "secretkey")