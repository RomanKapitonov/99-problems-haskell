-- (*) Find the K'th element of a list. The first element in the list is number 1.

-- Example:

-- * (element-at '(a b c d e) 3)
-- c
-- Example in Haskell:

-- Prelude> elementAt [1,2,3] 2
-- 2
-- Prelude> elementAt "haskell" 5
-- 'e'

elementAt' :: Int -> [a] -> a
elementAt' _ [] = error "Index out of bounds"
elementAt' 1 (x:_) = x
elementAt' i (_:xs)
  | i < 1 = error "Index out of bounds"
  | otherwise = elementAt' (i - 1) xs

elementAt'' :: Int -> [a] -> a
elementAt'' i xs
  | length xs < 1 = error "Index out of bounds"
  | otherwise = last $ take i xs

elementAt''' :: Int -> [a] -> a
elementAt''' i xs
  | length xs < 1 = error "Index out of bounds"
  | otherwise = head . reverse $ take i xs
