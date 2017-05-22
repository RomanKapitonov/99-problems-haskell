-- (*) Find the number of elements of a list.

-- Example in Haskell:

-- Prelude> myLength [123, 456, 789]
-- 3
-- Prelude> myLength "Hello, world!"
-- 13

myLength' :: [a] -> Int
myLength' [] = 0
myLength' (_:xs) = 1 + myLength' xs

myLength'' :: [a] -> Int
myLength'' = foldl (\acc _ -> acc + 1) 0

myLength''' :: [a] -> Int
myLength''' = foldr (\_ acc -> acc + 1) 0

myLength'''' :: [a] -> Int
myLength'''' = foldr (\_ -> (+1)) 0

