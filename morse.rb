@hash = {
  A: '.-',
  B: '-...',
  C: '-.-.',
  D: '-..',
  E: '.',
  F: '..-.',
  G: '--.',
  H: '....',
  I: '..',
  J: '.---',
  K: '-.-',
  L: '.-..',
  M: '--',
  N: '-.',
  O: '---',
  P: '.--.',
  Q: '--.-',
  R: '.-.',
  S: '...',
  T: '-',
  U: '..-',
  V: '...-',
  W: '.--',
  X: '-..-',
  Y: '-.--',
  Z: '--..'
}

def decode_char(string)
  result = ''
  @hash.each do |key, value|
    data = key.to_s
    result += data if value == string
  end
  result
end

print decode_char('.-')
# A
print "\n"

def decode_word(string)
  result = ''
  array = string.split
  array.each do |value|
    result += decode_char(value)
  end
  result
end

print decode_word('-- -.--')
# MY
print "\n"

def decode(string)
  result = ''
  arr = string.split('  ')
  arr.each do |val|
    result << "#{decode_word(val)} "
  end
  result
end

print decode('.-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...')
# A BOX FULL OF RUBIES
