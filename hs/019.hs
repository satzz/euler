main=print $ length $ filter ((==0) . wday ) [12..1211]
wday 0=1
wday (m+1)=(\x->mod x 7) $  (+(wday m)) $ head $ drop (mod m 12) $ mday $ isLeap $ div m 12
isLeap y
 |mod year 400==0 =True
 |mod year 100==0 =False
 |mod year 4==0   =True
 |otherwise       =False
 where year=y+1901
mday l=[3,if l then 1 else 0,3,2,3,2,3,3,2,3,2,3]
