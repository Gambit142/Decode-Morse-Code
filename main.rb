$morse_object = { 
".-" => "A",
"-..." => "B",
"-.-." => "C",
"-.." => "D",
"." => "E",
"..-." => "F",
"--." => "G",
"...." => "H",
".."=> "I",
".---" => "J",
"-.-" => "K",
".-.." => "L",
"--" => "M",
"-." => "N",
"---" => "O",
".---." => "P",
"--.-" => "Q",
".-." => "R",
"..." => "S",
"-" => "T",
"..-" => "U",
"...-" => "V",
".--" => "W",
"-..-" => "X",
"-.--" => "Y",
"--.." => "Z",
"/" => " ",
}

def decode_char(a)
  return $morse_object[a].upcase()
end 

puts decode_char('.-')

def decode_word(a)
  result = ''
  split_word = a.split(' ')
  split_word.each do |word| result += decode_char(word) end
  return result.upcase()
end

