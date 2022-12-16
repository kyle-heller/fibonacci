# # Using iteration, write a method #fibs which takes a number and returns an 
# array containing that many numbers from the fibonacci sequence. Using an 
# example input of 8, this method should return the array [0, 1, 1, 2, 3, 5, 8, 13].


def fibonacci(n)
  if n < 2
      n
  else
      fibonacci(n-1) + fibonacci(n-2)
  end
end

puts fibonacci(6) 

def fibs(number)
  array = []
  p_num = 0
  (0...number).each do |num|
    if p_num == 0
      array << 0
      p_num = 1
    elsif num == 1
      array << 1
      p_num = num
    else 
      array << array[-1] + array[-2]
    end
  end
  p array
end

# [0, 1, 1, 2, 3, 5, 8, 13]

