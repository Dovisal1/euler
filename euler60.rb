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

  def concat x
    raise ArgumentError unless x.is_a? Fixnum
    (self.to_s + x.to_s).to_i
  end
  alias << :concat
  
  def nextprime
    self += 1
    until self.prime?
      self+=1
    end
  end
  
end

a = b = c = d = e = 0 
loop do
  a.nextprime
  loop do
    b.nextprime
    loop do
      c.nextprime
      loop do
        d.nextprime
        loop do
          e.nextprime
          
          
          
          
          
          
          
    