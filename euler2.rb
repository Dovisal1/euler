def fib x
  if x < 0
    raise ArgumentError
  elsif x == 0 || x == 1
    return 1
  else
    return fib(x-1)+fib(x-2)
  end
end

i = 1
sum = 0
until (x = fib(i)) > 4000000
  sum += x if x%2==0
  i += 1
end
puts sum
    