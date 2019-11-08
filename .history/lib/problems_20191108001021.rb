# Run `bundle exec rspec` and satisy the specs.
# You should implement your methods in this file.
# Feel free to use the debugger when you get stuck.

def largest_prime_factor(num)
    primes = (2..num).select { |i| is_prime?(i) }

    primes.select { |i| num % i == 0 }.max
end

def is_prime?(num)
    if num < 2 
        return false
    end

    (2...num).any? { |i| num % i == 0 && num != i } ? false : true
end

def unique_chars?(string)
    string == string.uniq
end