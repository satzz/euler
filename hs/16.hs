main=print $  sumdigit $ 2^1000
sumdigit a
 |a<10      = a
 |otherwise = mod a 10 +(sumdigit $ div a 10)
