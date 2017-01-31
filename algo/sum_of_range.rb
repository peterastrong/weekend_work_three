# Complete the method called sum_of_range, which will accept an array containing
# two numbers, and return the sum of all of the whole numbers within the range of those
# numbers, inclusive.

def sum_of_range(array)
  if array[-1] > array[0]
    array2 = [array[0]]
    sum = 0 
    (array[-1] - array[0]).times do array2 << array[0] += 1
    end
    array2.each { |num| sum+=num }
    sum
  else 
    array3 = [array[-1]]
    sum = 0
    (array[0] - array[-1]).times do array3 << array[-1] += 1
    end 
    array3.each { |num| sum+=num }
    sum
  end
end

# Driver code - don't touch anything below this line.
puts "TESTING sum_of_range..."
puts

result = sum_of_range([1, 4])

puts "Your method returned:"
puts result
puts

if result == 10
  puts "PASS!"
else
  puts "F"
end

result = sum_of_range([4, 1])

puts "Your method returned:"
puts result
puts

if result == 10
  puts "PASS!"
else
  puts "F"
end