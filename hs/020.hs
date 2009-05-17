main=print $ sum_ $ product $ [1..100]
sum_ n
 |n<10     =n
 |otherwise=(+(mod n 10)) $ sum_ $ div n 10
