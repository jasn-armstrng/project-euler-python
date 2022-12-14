# Question:
# Each new term in the Fibonacci sequence is generated by adding the previous two terms.
# By starting with 1 and 2, the first 10 terms will be:

# 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, ...

# By considering the terms in the Fibonacci sequence whose values do not exceed four million,
# find the sum of the even-valued terms.

function sumEvenFibsBelow(x)
  last2Fibs = [1 2]
  sumEvenFibs = 0
  while last2Fibs[end] < x
    if last2Fibs[end]%2 == 0
      sumEvenFibs += last2Fibs[end]
    end
    last2Fibs = [last2Fibs[end], sum(last2Fibs)]
  end
  return sumEvenFibs
end

println(sumEvenFibsBelow(4e6+1))
@time sumEvenFibsBelow(4e6+1)
