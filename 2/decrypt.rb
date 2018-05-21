#!/usr/bin/env ruby
lines = File.read('./text.txt')
table = {}
('a'..'z').each do |al|
  table[al.ord] = (al.ord - 13 < 'a'.ord) ? al.ord - 13 + 26: al.ord - 13
end
('A'..'Z').each do |al|
  table[al.ord] = (al.ord - 13 < 'A'.ord) ? al.ord - 13 + 26: al.ord - 13
end
p table

as = []
bs = lines.bytes.to_a
bs.each do |b|
  if [32, 46, 10, 44].include?(b)
    as.push(b)
    next
  end
  as.push(table[b])
end

p bs
p as
print bs.pack('c*')
print as.pack('c*')

