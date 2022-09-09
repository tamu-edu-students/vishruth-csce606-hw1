# frozen_string_literal: true

# Part 1

def sum(arr)
  # YOUR CODE HERE
  if arr.length() == 0 then
    return 0
  end
  total = 0
  for val in arr do
    total = total + val
  end
  return total
end

def max_2_sum(arr)
  # YOUR CODE HERE
  if arr.length() == 0 then
    return 0
  end
  max1 = arr.delete_at(arr.index(arr.max))
  if arr.length() == 0 then
    return max1
  end
  max2 = arr.delete_at(arr.index(arr.max))
  return max1+max2
end

def sum_to_n?(arr, number)
  # YOUR CODE HERE
  if arr.length() <= 1 then
    return false
  end
  for i in 0...arr.length()-1 do
    for j in i+1...arr.length() do
      if arr[i] + arr[j] == number then
        return true
      end
    end
  end
  return false
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  return "Hello," + " " + name
end

def starts_with_consonant?(string)
  # YOUR CODE HERE
  if string.length() == 0 then
    return false
  end
  vowels = ['a', 'e', 'i', 'o', 'u', 'A', 'E', 'I', 'O', 'U']
  if /[^a-zA-Z]/.match(string) or vowels.include?(string[0]) then
    return false
  end
  return true
end

def binary_multiple_of_4?(string)
  # YOUR CODE HERE
  if string.length() == 0 then
    return false
  end
  if /[^0-9]/.match(string) then
    return false
  end
  number = string.to_i
  if number % 4 == 0 then
    return true
  end
  false
end

# Part 3

# Object representing a book
class BookInStock
  # YOUR CODE HERE
  attr_accessor :isbn, :price
  def initialize(isbn, price)
    if isbn == "" or price <= 0 then
      raise ArgumentError
    end
    @isbn = isbn
    @price = price
  end

  def price_as_string
    "$" + "%0.2f" % @price
  end
end
