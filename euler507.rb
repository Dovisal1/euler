def trib n
  if n==0 or n==1
    return 0
  elsif n==2
    return 1
  elsif n>=3
    return trib(n-1) + trib(n-2) + trib(n-3)
  else
    raise ArgumentError
  end
end

def r n
  trib(n) % 10**7
end

def v n
  a = []
  a << r(12*n-11) - r(12*n-10)
  a << r(12*n-9) + r(12*n-8)
  a << r(12*n-7) * r(12*n-6)
  a
end

def w n
  a = []
  a << r(12*n-5) - r(12*n-4)
  a << r(12*n-3) + r(12*n-2)
  a << r(12*n-1) * r(12*n)
  a
end

def manhattan v, w
  k = 1
  l = 1
  (k*v[0] + l*w[0]).abs +
  (k*v[1] + l*w[1]).abs +
  (k*v[2] + l*w[2]).abs
end

a = v 1
b = w 1
p a; p b
  
  