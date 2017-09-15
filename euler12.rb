class Fixnum
  def number_of_divisors
    count = 0
    1.upto self do |x|
      count +=1 if self % x == 0
    end
    count
  end
end

f = Fiber.new {
  count = 0
  Fiber.yield count += 1 while true
}

x = 0
loop do
  x += f.resume
  if x.number_of_divisors > 500
    puts "#{x} has #{x.number_of_divisors}"
    break
  end
end

  