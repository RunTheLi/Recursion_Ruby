## second question solve by using recursion
def fibs_rec(n, sequence = [0, 1])
  return [] if n <= 0
  return [0] if n == 1
  return sequence[0...n] if sequence.length >= n

  sequence << sequence[-1] + sequence[-2]
  fibs_rec(n, sequence)
end

puts fibs_rec(8).inspect
