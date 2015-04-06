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
