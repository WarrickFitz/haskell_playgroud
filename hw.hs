validate :: [Int] -> Bool
validate xs = let withoutLastElement = dropLast xs
                  reversedList = reverseList withoutLastElement
                  oddPlacesDoubled = multiplyOddPlacesBy2 reversedList
                  nineSubtracted = subtract9 oddPlacesDoubled
                  sumAll = addAll nineSubtracted
                  sumPlusCheckDigit = sumAll + (checkDigit xs)
               in isDivisibleBy10 sumPlusCheckDigit

-- dropLast [1, 2, 3] = [1, 2]
-- dropLast [1] = []
-- dropLast [] = []
dropLast :: [Int] -> [Int]
dropLast [] = []
dropLast [x] = []
dropLast (x:xs) = x:dropLast xs

reverseList :: [Int] -> [Int]
reverseList = ???


multiplyOddPlacesBy2 :: [Int] -> [Int]
multiplyOddPlacesBy2 [] = []
multiplyOddPlacesBy2 [x] = [x * 2]
multiplyOddPlacesBy2 (x:y:xs) = (2*x): y: multipleOddPlacesBy2 xs

subtract9 :: [Int] -> [Int]
subtract9 = ???

addAll :: [Int] -> Int
addAll [] = 0
addAll (x:xs) = x + addAll xs

-- Returns the check digit for a credit card number
checkDigit :: [Int] -> Int
checkDigit = ???

isDivisibleBy10 :: Int -> Bool
isDivisibleBy10 = ???


