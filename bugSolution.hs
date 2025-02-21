The solution involves using `takeWhile` to limit the evaluation to the desired number of even numbers or explicitly forcing evaluation using `take`.

```haskell
filterEven :: [Integer] -> [Integer]
filterEven xs = filter even xs

-- Solution 1: Using takeWhile to process the list till a certain number of elements are processed
filterEvenImproved1 :: [Integer] -> [Integer]
filterEvenImproved1 xs = take 10 $ filter even xs -- Evaluates only 10 even numbers

-- Solution 2: Explicitly limiting the input list size
filterEvenImproved2 :: Integer -> [Integer] -> [Integer]
filterEvenImproved2 n xs = filter even (take n xs)

main :: IO ()
main = do
  let evenNumbers = filterEvenImproved1 [1..]
  print evenNumbers 
  let evenNumbers2 = filterEvenImproved2 1000 [1..] -- take first 1000
  print (take 10 evenNumbers2)
```