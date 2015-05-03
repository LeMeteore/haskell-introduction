-- sum of integers from 1 to n
-- takes an integer as i, yields an integer as o
s::Integer -> Integer
s 0 = 0
s n = n + s (n-1)

h::Integer -> String
h 5 = "5 is my magical number"
h n
  | mod n 2 == 0 = "even"
  | otherwise = "not even"

foo::Integer -> Integer
foo 1
  | "Haskell" > "C++" = 3
  | otherwise = 4
foo n
  | n < 0 = 0
  | n `mod` 17 == 2 = -43
  | otherwise = n + 3

isEven::Integer -> Bool
isEven n
  | mod n 2 == 0 = True
  | otherwise = False

-- a function taking 3 integers as arguments
-- and returning an integer as result
f::Int -> Int -> Int -> Int
f x y z = x + y + z

-- how to define an operator
a |& b = (a || b) && not (a && b)
test = True |& False
