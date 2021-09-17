# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  arr.sum
end

def max_2_sum arr
  if arr.length <2
      arr.sum
  else
      max1 = arr.sort[-1]
      max2 = arr.sort[-2]
      max1 + max2
  end
end

def sum_to_n? arr, n
  if arr.length <2
      return false
  else
      l = arr.length
      for i in 0..l-2 do
          for j in i+1..l-1 do
              if arr[i]+arr[j] == n
                  return true
              end
          end
      end
      return false
  end
end

# Part 2

def hello(name)
  return "Hello, " + name
end

def starts_with_consonant? s
  if s.empty?
	  return false
  end
  s.downcase!
  s = s.chars.first
  return s.match?(/[A-Za-z]/) && not(['a', 'e', 'i', 'o', 'u'].include? s)
end

def binary_multiple_of_4? s
  if not(s !~ /[^01]/)
	  return false
  end
  if s.empty?
	  return false
  end
  if s.length <2
	  if s[0] == '0'
		  return true
	  else
		  return false
	  end
  else
	  if s[-1] == '0' && s[-2] == '0'
		  return true
	  else
		  return false
	  end
  end
end

# Part 3

class BookInStock
  def initialize(isbn, price)
   if isbn.empty?
     raise ArgumentError
   end
     if price<=0
     raise ArgumentError
   end
     @book_isbn = isbn
     @book_price = price
  end
  def isbn
    @book_isbn
  end
  def price
    @book_price
  end

  def isbn=(isbn)
    @book_isbn = isbn
  end
  def price=(price)
    @book_price = price
  end
  def price_as_string
    return "$"+'%.2f' % (@book_price)
  end
end