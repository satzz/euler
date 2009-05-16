main=print $ head [a*b*(1000-a-b)|a<-[1..(floor $ 1000/3)],b<-[a..1000],a^2+b^2==(1000-a-b)^2]
