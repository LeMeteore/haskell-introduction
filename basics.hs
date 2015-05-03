-- x has type int
-- x is a name for value 3
-- x is defined to be 3
x :: Int
x = 3

-- try uncommenting the line below
-- x = 4
--
-- basics.hs:7:1:
-- basics.hs:7:1:
--     Multiple declarations of `x'
--     Declared at: basics.hs:4:1
--                  basics.hs:7:1`
y::Int
y = y + 1

-- machine sized integers
i::Int
i = -78

-- Arbitrary precision integers
n::Integer
n = 1234567890987654321987340982334987349872349874534

r::Integer
r = 2^(2^(2^(2^2)))

digits::Int
digits = length (show r)

-- double precision floating point
d1, d2 :: Double
d1 = 4.5387
d2 = 6.2831e-4

-- Booleans
b1, b2 :: Bool
b1 = True
b2 = False

-- Unicode characters
c1, c2 :: Char
c1 = 'x'
c2 = 'ダ'

-- Strings are list of characters with special syntax
s::String
s = "Hello, Haskell"


-- lists

-- num, range, range2 are 3 objects of type list of integers
nums, range, range2 :: [Integer]
nums = [1,2,3,19]
range = [1..100]
range2 = [2,4..100]

-- list of chars & Strings are the same thing
hello::String
hello = "hello"

hello2::[Char]
hello2 = ['h','e','l','l','o']

-- helloSame is True
helloSame = hello == hello2

emptyList = []
e1 = 1:[]
e2 = 3:(1:[])
e3 = 2:3:4:[]
e4 = [2,3,4] == e3

hailstone :: Integer -> Integer
hailstone n
  | n `mod` 2 == 0 = n `div` 2
  | otherwise      = 3*n + 1

-- Generate the sequence of hailstone iterations from a starting number.
hailstoneSeq :: Integer -> [Integer]
hailstoneSeq 1 = [1]
hailstoneSeq n = n : hailstoneSeq (hailstone n)

-- compute length of list of integer
intListLength::[Integer] -> Integer
intListLength [] = 0
-- since we don't use x, we can replace (x:xs) by (_:xs)
intListLength (x:xs) = 1 + intListLength xs

-- take first item from list
xs = [1,2,3,4,5,6,7]
xs0 = xs !! 0 -- take item at index zero
xs1 = take 2 xs -- return first 2 items
xs2 = drop 2 xs -- return all except first 2 items
