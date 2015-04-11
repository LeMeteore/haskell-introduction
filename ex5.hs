-- tip: list comprehension
import Data.Char (toUpper)
s = "Hello"
x = [toUpper c | c <- s]

-- defining a type synonym
type Peg = String
type Move = (Peg, Peg)

-- hanoi 2 "a" "b" "c" == [("a","c"), ("a","b"), ("c","b")]
hanoi::Integer -> Peg -> Peg -> Peg -> [Move]
hanoi n "a" "b" "c" = []
