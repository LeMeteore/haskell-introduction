-- tip: 135 div 10 = 10
-- tip: 135 mod 10 = 5

-- toDigits 1234 == [1,2,3,4]
toDigits::Integer -> [Integer]
toDigits n
  | n < 0 = []
  | n == 0 = []
  | otherwise = toDigits (div n 10) ++ [mod n 10]

-- toDigits 1234 == [4,3,2,1]
toDigitsRev::Integer -> [Integer]
toDigitsRev n
  | n < 0 = []
  | n == 0 = []
  | otherwise = mod n 10: toDigits (div n 10)

-- for this exercice
-- we should reverse the input, then reverse the output
-- reverse(doubleEveryOther (reverse([8,7,6,5])))
-- doubleEveryOther [8,7,6,5] == [16,7,12]
-- doubleEveryOther [1,2,3] == [1,4,3]
doubleEveryOther::[Integer] -> [Integer]
doubleEveryOther (x:y:z) = x : (2*y) : doubleEveryOther z
doubleEveryOther x = x


-- sumDigits [16,7,12,5] = 1 + 6 + 7 + 1 + 2 + 5 = 22
sumDigits::[Integer] -> Integer
sumDigits [] = 0
sumDigits (x:y) = x `div` 10 + x `mod` 10 + (head y) `div` 10 + (head y) `mod` 10 + sumDigits (tail y)

-- validate 4012888888881881 = True
-- validate 4012888888881882 = False
validate::Integer -> Bool
validate n
  | sumDigits(reverse(doubleEveryOther(toDigitsRev(n)))) `mod` 10 == 0 = True
  | otherwise = False
