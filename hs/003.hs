main=print $ test  600851475143 2
test tg n
  |n*n > tg      = [tg]
  |(mod tg n)==0 = concat [test n 2, test (div tg n) 2]
  |otherwise     = test tg (n+1)
