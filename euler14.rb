class Fixnum
  def collatz_chain_length
    x = self
    count = 0
    
    until x == 1
      if x % 2 == 0
        x /= 2
      else
        x = 3*x+1
      end
      count += 1
    end
    count + 1
  end
end

puts (1...1000000).to_a.inject {|m,x| m.collatz_chain_length > x.collatz_chain_length ? m : x}
    
    

  