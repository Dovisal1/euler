class Fixnum
  def digitify
    a = []
    stringnum = self.to_s
    stringnum.each_char do |c|
      a << c.to_i
    end
    a
  end
      
  def sum_of_fifth_powers
    digitify.inject(0){|m,x|m + x**5}
  end
end
      
a = []
2.upto(9999999){|x| a << x if x == x.sum_of_fifth_powers}
puts a.inject{|s,x|s+x}