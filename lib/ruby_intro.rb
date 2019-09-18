# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # YOUR CODE HERE
  i = 0
  curr_sum = 0
  until i == arr.length
  	curr_sum = curr_sum + arr[i]
  	i = i + 1
  end
  return curr_sum
end

def max_2_sum arr
  # YOUR CODE HERE
  if arr.length == 0
  	return 0
  elsif arr.length == 1
  	return arr[0]
  end

  if arr[0] > arr[1]
  	curr_largest = arr[0]
  	curr_sec_largest = arr[1]
  else
  	curr_largest = arr[1]
  	curr_sec_largest = arr[0]
  end

  i = 2
  until i == arr.length
  	if arr[i] > curr_largest
  		curr_sec_largest = curr_largest
  		curr_largest = arr[i]
  	elsif arr[i] > curr_sec_largest
  		curr_sec_largest = arr[i]
  	end
  	i = i + 1
  end
  return curr_largest + curr_sec_largest
end

def sum_to_n? arr, n
  # YOUR CODE HERE
  if arr.length < 2
  	return false
  end

  i = 0
  j = 0
  until i == arr.length
  	j = i + 1
  	until j == arr.length
  		if arr[i] + arr[j] == n
  			return true
  		else
  			j = j + 1
  		end
  	end
  	i = i + 1
  end
  return false
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  return "Hello, #{name}"
end

def starts_with_consonant? s
  # YOUR CODE HERE
  if s.length == 0
  	return false
  elsif s[0].ord < 66
  	return false
  elsif s[0].ord > 122
  	return false
  end

  case s[0].ord
  when 91 .. 97
  	return false
  when 69
  	return false
  when 73
  	return false
  when 79
  	return false
  when 85
  	return false
  when 101
  	return false
  when 105
  	return false
  when 111
  	return false
  when 117
  	return false
  else
  	return true
  end

end

def binary_multiple_of_4? s
  # YOUR CODE HERE
  i = 0
  until i == s.length
  	if s[i] != '0' && s[i] != '1'
  		return false
  	end
  	i = i + 1
  end

  if s.length == 1 && s[0] == '0'
  	return true
  end

  if s[-1] == '0' && s[-2] == '0'
  	return true
  else
  	return false
  end
end

# Part 3

class BookInStock
# YOUR CODE HERE
def initialize(isbn, price)
	@isbn = isbn
	@price = price
	if isbn.length == 0
		raise ArgumentError.new("ISBN cannot be empty.")
	elsif price <= 0
		raise ArgumentError.new("Price must be positive number.")
	end
end

# Getters/Setters
def isbn
	@isbn
end
def price
	@price
end

def isbn=(newisbn)
	if isbn.length == 0
		raise ArgumentError.new("ISBN cannot be empty.")
	end
	@isbn = newisbn
end

def price=(newprice)
	if price <= 0
		raise ArgumentError.new("Price must be positive number.")
	end
	@price = newprice
end


def price_as_string
	formatprice = '%.2f' % @price
	return "$#{formatprice}"
end
end
