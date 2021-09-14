dropLast :: [Int] -> [Int]
dropLast [] = []
dropLast [x] = []
dropLast (x:xs) = x:dropLast xs

reverseList :: [Int] -> [Int]
reverseList [] = []
reverseList [x] = [x]
reverseList (x:xs) = reverseList xs++[x]

multiplyOddPlacesBy2 :: [Int] -> [Int]
multiplyOddPlacesBy2 [] = []
multiplyOddPlacesBy2 [x] = [x * 2]
multiplyOddPlacesBy2 (x:y:xs) = (2*x) : y : multiplyOddPlacesBy2 xs

subtract9 :: [Int] -> [Int]
subtract9 [] = []
subtract9 (x:xs)
    | x > 9 = (x-9):subtract9 xs
    | otherwise = x:subtract9 xs


addAll :: [Int] -> Int
addAll [] = 0
addAll (x:xs) = x + addAll xs    

checkDigit :: [Int] -> Int
checkDigit[x] = x
checkDigit (x:xs) = checkDigit xs


isDivisibleBy10 :: Int -> Bool
isDivisibleBy10 x
    | x `mod` 10 == 0 = True
    | otherwise = False

validate :: [Int] -> Bool
validate xs = let withoutLastElement = dropLast xs
                  reversedList = reverseList withoutLastElement
                  oddPlacesDoubled = multiplyOddPlacesBy2 reversedList
                  nineSubtracted = subtract9 oddPlacesDoubled
                  sumAll = addAll nineSubtracted
                  sumPlusCheckDigit = sumAll + (checkDigit xs)
               in isDivisibleBy10 sumPlusCheckDigit