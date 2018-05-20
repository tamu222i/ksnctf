#!/usr/bin/env ruby
lines = File.read('./text.txt')
bs = lines.bytes.to_a
as = []
bs.each do |b|
  if b == 32
    as.push(b)
    next
  end
  as.push(b - 13)
end

p bs
print bs.pack('c*')
print as.pack('c*')

