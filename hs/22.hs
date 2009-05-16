import List
import Char
main= readFile "names.txt" >>=
      print .sum . map (\t->fst t * snd t) .
       zip [1..] . map (sum . map ( (+(-64)).ord) ) .
       sort . words . translate 
translate []=[]
translate (c:cs)
 |c==','  = ' ':cs_
 |c=='"'   = cs_
 |otherwise= c:cs_
 where cs_=translate cs
