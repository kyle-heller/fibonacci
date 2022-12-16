# # Now write another method #fibs_rec which solves the same problem recursively. 
# This can be done in just 3 lines (or 1 if you’re crazy, but don’t consider either 
#   of these lengths a requirement… just get it done).

# version 1

def fib_rec(num)
  # Error check
  if num < 0 then
      raise ArgumentError, "The number must be a positive integer"
  end

  # Terminating base cases
  return [] if num == 0
  return [0] if num == 1
  return [0,1] if num == 2 

  # Recursion
  seq = fib_seq(num - 1) 

  # The recursive function
  seq << seq[-2] + seq[-1]

  return seq
end

# version 2
def fibs_rec(n)
  return [0, 1].slice(0, n) if n < 3

  prev = fibs_rec(n - 1)
  prev << prev[-1] + prev[-2]
end