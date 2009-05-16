main = print $ last $ take 10001 $ sieve [2..]
sieve (x:xs) = x:(sieve [z|z<-xs, z `mod` x /= 0])
