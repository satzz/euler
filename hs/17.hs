main=print $ 3+8+ (sum $ map threedigits [1..999])
threedigits n
 |n<100        =twodigits n
 |mod n 100==0 =lower (div n 100) +7 -- 100,200,..,900
 |otherwise    =lower (div n 100) +7+3+ twodigits (mod n 100)
twodigits n
 |n<20        =lower n
 |otherwise   =upper (div n 10)+lower (mod n 10)
upper n=last $ take (n-1) [6,6,6,5,4,7,6,6] -- 20,30,..,90
lower n=last $ take (n+1) [0,3,3,5,4,4,3,5,5,4,3,6,6,8,8,7,6,9,8,8] -- 0-19
