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

NUM = 600851475143
a = []
NUM.times do |x|
  x << a if x.prime?
end



  