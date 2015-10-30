# When done, submit this entire file to the autograder.

# Part 1

# Define a method sum(array) that takes an array of integers as an argument and
# returns the sum of its elements. For an empty array it should return zero.
def sum arr
  #return 0 if arr.empty?
  # arr.inject(:+)
  arr.inject(0, :+)
end

# Define a method max_2_sum(array) which takes an array of integers as an argument
# and returns the sum of its two largest elements. For an empty array it should 
# return zero. For an array with just one element, it should return that element.
def max_2_sum arr
  return 0 if arr.empty?
  return arr[0] if arr.length == 1
  sorted = arr.sort.reverse
  sorted[0] + sorted[1]
end

# Define a method sum_to_n?(array, n) that takes an array of integers and an 
# additional integer, n, as arguments and returns true if any two elements in 
# the array of integers sum to n. An empty array should sum to zero by definition.
def sum_to_n? arr, n
  return false if arr.empty? or arr.length == 1
  for i in 0...arr.length - 1
    for j in i + 1...arr.length
      if arr[i] + arr[j] == n
        return true
      end
    end
  end
  return false
end

# Part 2

# Define a method hello(name) that takes a string representing a name and 
# returns the string "Hello, " concatenated with the name.
def hello(name)
  return "Hello, #{name}"
end

# Define a method starts_with_consonant?(s) that takes a string and returns true
# if it starts with a consonant and false otherwise. 
def starts_with_consonant? s
  return false if s.empty?
  return true if s[0] =~ /[^\Waeiou]/i
  return false
end

# Define a method binary_multiple_of_4?(s) that takes a string and returns true
# if the string represents a binary number that is a multiple of 4.
def binary_multiple_of_4? s
  return false if s.empty? or s =~ /[^01]/
  return true if s.to_i % 100 == 0
  return false
end

# Part 3

class BookInStock
# YOUR CODE HERE
end
