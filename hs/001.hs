main=print $ sum $ [x|x<-[1..999], (x `mod` 3)*(x `mod` 5)==0] 
