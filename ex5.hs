-- tip: list comprehension
import Data.Char (toUpper)
s = "Hello"
x = [toUpper c | c <- s]

-- defining a type synonym
type Peg = String
type Move = (Peg, Peg)
type NumberOfPegs = Integer
type NumberOfDiscs = Integer
type NumberOfMoves = Integer

-- moves = 2^discs -1 (only when number of pegs == 3)
numberOfMoves::NumberOfDiscs -> NumberOfMoves
numberOfMoves n
  | n > 0 = 2^n -1
  | otherwise = 0

-- hanoi 2 "a" "b" "c" == [("a","c"), ("a","b"), ("c","b")]
-- hanoi::Integer -> Peg -> Peg -> Peg -> [Move]
-- hanoi n x y z = []
