def decode_char(code)
  morse_object = {
    '.-' => 'A', '-...' => 'B', '-.-.' => 'C', '-..' => 'D',
    '.' => 'E', '..-.' => 'F', '--.' => 'G', '....' => 'H',
    '..' => 'I', '.---' => 'J', '-.-' => 'K', '.-..' => 'L',
    '--' => 'M', '-.' => 'N', '---' => 'O', '.---.' => 'P',
    '--.-' => 'Q', '.-.' => 'R', '...' => 'S', '-' => 'T',
    '..-' => 'U', '...-' => 'V', '.--' => 'W', '-..-' => 'X',
    '-.--' => 'Y', '--..' => 'Z', '/' => ' '
  }

  morse_object[code].upcase
end

puts decode_char('.-')

def decode_word(code)
  result = ''
  split_word = code.split
  split_word.each { |word| result += decode_char(word) }
  result.upcase
end

puts decode_word('-- .- -.--')

def decode_morse_code(code)
  morse_words = []
  split_word = code.split('   ')
  split_word.each { |word| morse_words.push(decode_word(word)) }
  morse_words.join(' ').upcase
end

puts decode_morse_code(' .-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-. / .-. ..- -... .. . ...')
