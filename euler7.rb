class Fixnum
  def prime?
    return false if self <= 1
    
    primeness = true
    2.upto self-1 do |i|
      if self%i == 0
        primeness = false
        break
      end
    end
    primeness
  end
end

prime_count = 0
x = 0

loop do
  break if prime_count == 10001
  x += 1
  prime_count += 1 if x.prime?
end

puts x
  