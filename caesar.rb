def caesar(string, shift)
  message = ""
  low_alphabet = ('a'..'z').to_a
  up_alphabet = ('A'..'Z').to_a

  string.split("").each { |chr|
    if chr =~ /[[:lower:]]/
      chr_position = low_alphabet.index(chr)
      new_position = chr_position + shift
      new_aplha_index = new_position % 26
      message = message + low_alphabet[new_aplha_index]
    elsif
      chr =~ /[[:upper:]]/
      chr_position = up_alphabet.index(chr)
      new_position = chr_position + shift
      new_aplha_index = new_position % 26
      message = message + up_alphabet[new_aplha_index]
    else
      message = message + chr
    end
  }
  return message
end

puts caesar("What a string!",5)


# TODO make the if statement DRY
