# Run `bundle exec rspec` and satisy the specs.
# You should implement your methods in this file.
# Feel free to use the debugger when you get stuck.

def largest_prime_factor(num)
    primes = primes_up_to(approx_sqr(num))

    primes.select { |i| num % i == 0 }.max
end