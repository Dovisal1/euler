a = b = (1..100).to_a

s = a.map{|x| x**2}.inject{|s,x|s+x}
t = a.inject{|s,x|s+x}**2

puts (t-s).abs