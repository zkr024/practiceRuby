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
  Z: '--..',
}


def decode_char(string)
  result = ''
  @hash.each { |key,value|
    data = key.to_s
    if value === string
      result += data
    end
  }
  result
end

print decode_char(".-")
# A
print "\n"

def decode_word(string)
  result = ''
  array = string.split(' ')
  array.each {|value|
    result += decode_char(value)
  }
  result
end

print decode_word("-- -.--")
# MY
print "\n"

def decode(string)
  result = ''
  arr = string.split('  ')
  arr.each {|val|
    result << "#{decode_word(val)} "
  }
  result
end


print decode('.-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...')
# A BOX FULL OF RUBIES