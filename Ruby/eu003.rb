def primes()
    list = [2]
    x = 3
    Enumerator.new do |enum|
        while true do
            if not list.any?{|prime| x % prime == 0} then
                list.push(x)
                enum.yield(x)
            end
            x += 2
        end
    end
end

n = 600851475143
for p in primes() do
    break if n == p
    n /= p if n % p == 0
end
puts n
