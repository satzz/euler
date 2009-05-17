main=readFile "p13num" >>= print . take 10 . show . sum . map (\x->read(x)::Integer) . lines
