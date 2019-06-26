def to_hex(r,g,b)
  [r,g,b].inject('#') do |hex,n|
    #nを16進数に変換
    #nを二桁で表示
    hex += n.to_s(16).rjust(2,'0')
  end
end

def to_ints(hex)
  r = hex[1..2]
  g = hex[3..4]
  b = hex[5..6]
  #処理結果を配列に代入
  [r,g,b].map do |s|
    #16進数の文字列を10進数の数値に変換
    s.hex
  end
end

puts to_hex(255,255,255)
puts to_hex(255,255,255).class
puts to_ints(to_hex(255,255,255))
puts to_ints(to_hex(255,255,255)).class
