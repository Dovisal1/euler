a = (1..20).to_a
x = 0
loop do
  x += 1
  count = 0
  a.each do |i|
    if x % i != 0
      break
    else
      count += 1
    end
  end
  break if count == 20
end
puts x
      