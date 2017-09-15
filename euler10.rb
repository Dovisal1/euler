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

f = File.open('euler10.result', 'w')

primes = []
1.upto(2000000) do |x|
  puts x
  primes << x if x.prime?
end

f.print primes.inject{|s,x|s+x}

f.close
