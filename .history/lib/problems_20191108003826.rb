# Run `bundle exec rspec` and satisy the specs.
# You should implement your methods in this file.
# Feel free to use the debugger when you get stuck.

require "byebug"

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
    string.chars == string.chars.uniq
end

def dupe_indices(array)
    indices = Hash.new([])

    unique = array.select { |i| array.index(i) != array.rindex(i) }
    debugger
    unique.each { |c| (indices[c] << array.index(c)) && array.slice!(array.index(c)) }
    
    indices
end

def ana_array(arr1, arr2)
    if arr1.all? { |i| arr2.include?(i) } && arr2.all? { |i| arr1.include?(i) }
        return true
    else
        return false
    end
end

p ana_array(["cat", "dog", "cat"], ["dog", "cat", "mouse"])