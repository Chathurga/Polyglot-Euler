# Set up a generator for all Fibonacci numbers
def fib
  Enumerator.new do |enum|
    x1 = 0
    x2 = 1
    tmp = 0
    while true
      enum.yield x2
      tmp = x1 + x2
      x1 = x2
      x2 = tmp
    end
  end
end

# Iterate through the fib numbers until they get bigger than 4 million
sum = 0
for x in fib do
  if x >= 4000000 then
    break
  end
  if x % 2 == 0 then
    sum += x  
  end
end
puts sum
