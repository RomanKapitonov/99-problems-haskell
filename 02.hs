-- (*) Find the last but one element of a list.

-- (Note that the Lisp transcription of this problem is incorrect.)

-- Example in Haskell:

-- Prelude> myButLast [1,2,3,4]
-- 3
-- Prelude> myButLast ['a'..'z']
-- 'y'

myButLast :: [a] -> a
myButLast [x] = error "Only one element given!"
myButLast (x: (_:[])) = x
myButLast (_:xs) = myButLast xs
