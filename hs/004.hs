main=print $ maxim [k|k<-prod,reverse ( show k )== show k]
prod=[i*j|i<-[100..999],j<-[100..999],i<j]
maxim::[Integer]->Integer
maxim []=0
maxim (x:xs)=max x $ maxim xs
