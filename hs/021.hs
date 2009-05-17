main=print $ sum $ [n|n<-[1..9999],(y . y) n==n ,y n/=n]
y n=(+1) $ sum $ [if x*x==n then x else (+x) $ div n x | x<-[2..n-1],x*x<=n,mod n x==0]
