-- 8 Problem 8
-- (**) Eliminate consecutive duplicates of list elements.

-- If a list contains repeated elements they should be replaced with a
-- single copy of the element. The order of the elements should not be changed.

-- Example:

-- * (compress '(a a a a b c c a a d e e e e))
-- (A B C A D E)
-- Example in Haskell:

-- > compress "aaaabccaadeeee"
-- "abcade"

compress :: String -> String
compress (x:y:xs)
  | x == y    = compress(y:xs)
  | otherwise = x:compress(y:xs)
compress ys = ys
