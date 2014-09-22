# Returns a generator for the Fibonacci numbers below a certain limit
def fib(upto)
  Enumerator.new do |enum|
    x1 = 0
    x2 = 1
    tmp = 0
    while x2 < upto
      enum.yield x2
      tmp = x1 + x2
      x1 = x2
      x2 = tmp
    end
  end
end

sum = 0
for x in fib(4000000) do
  if x % 2 == 0 then
    sum += x  
  end
end
puts sum
