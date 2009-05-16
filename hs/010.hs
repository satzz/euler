main   =print $ sum primes
primes =2:filter 
            (\n -> all (\x -> mod n x /= 0) $ takeWhile (\x -> x*x<=n) primes)
            [3,5..70000-1]
