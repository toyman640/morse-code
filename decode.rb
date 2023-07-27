def decode_char(morse_code)
    case morse_code
    when '.-'
      'A'
    when '-...'
      'B'
    when '-.-.'
      'C'
    when '-..'
      'D'
    when '.'
      'E'
    when '..-.'
      'F'
    when '--.'
      'G'
    when '....'
      'H'
    when '..'
      'I'
    when '.---'
      'J'
    when '-.-'
      'K'
    when '.-..'
      'L'
    when '--'
      'M'
    when '-.'
      'N'
    when '---'
      'O'
    when '.--.'
      'P'
    when '--.-'
      'Q'
    when '.-.'
      'R'
    when '...'
      'S'
    when '-'
      'T'
    when '..-'
      'U'
    when '...-'
      'V'
    when '.--'
      'W'
    when '-..-'
      'X'
    when '-.--'
      'Y'
    when '--..'
      'Z'
    when '-----'
      '0'
    when '.----'
      '1'
    when '..---'
      '2'
    when '...--'
      '3'
    when '....-'
      '4'
    when '.....'
      '5'
    when '-....'
      '6'
    when '--...'
      '7'
    when '---..'
      '8'
    when '----.'
      '9'
    when '.-.-.-'
      '.'
    when '--..--'
      ','
    when '..--..'
      '?'
    when '-.-.--'
      '!'
    when '-....-'
      '-'
    when '-.--.'
      '('
    when '-.--.-'
      ')'
    when '.-..-.'
      '"'
    when '.----.'
      "'"
    when '-..-.'
      '/'
    when '.-.-.'
      '+'
    when '---...'
      ':'
    when '-.-.-.'
      ';'
    when '.-...'
      '&'
    when '.-..-'
      '"'
    when '-.--.'
      ')'
    when '..--.-'
      '_'
    when '...-..-'
      '$'
    when '.-.-.--'
      '!'
    when '.--.-.'
      '@'
    else
      'Not a Morse code character!'
    end
  end
  
  def decode_word(morse_word)
    uncoded_word = ''
    word_clean_up = morse_word.strip
    char_array = word_clean_up.split(' ')
    char_array.each do |char|
      char_at = decode_char(char)
      uncoded_word += char_at
    end
    uncoded_word
  end
  
  def decode(morse_mssg)
    uncoded_mssg = ''
    mssg_clean = morse_mssg.strip
    word_array = mssg_clean.split('   ')
    word_array.each do |word|
      word_final = decode_word(word)
      uncoded_mssg += ' ' + word_final
    end
    uncoded_mssg.strip
  end
  
  print decode('      .-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...')
  