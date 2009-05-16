main=print $ sum $ filter even $ tail $ fib [1,1]
fib::[Integer]->[Integer]
fib xs=if ((head xs) > 4000000) then xs else (fib $ stretch xs)
stretch::[Integer]->[Integer]
stretch xs = sum (take 2 xs):xs
