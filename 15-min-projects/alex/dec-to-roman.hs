rn = [("I", "V"), ("X", "L"), ("C", "D"), ("M", "¬")]

constructData :: Int -> [([Char], [Char])] -> [(Int, ([Char], [Char]))]
constructData n rn = zip (reverse (digs n)) rn

makeRomanNumeral n rn
  | n >= 5000 = error "Works with numbers up to 4999."
  | otherwise = mconcat $ reverse $ map (\t -> makeRomanChar (fst t) (snd t)) (constructData n rn)

makeRomanChar n t
  | n == 5 = snd t
  | n > 5 = (snd t) ++ take (n - 5) (cycle (fst t))
  | n == 0 = ""
  | otherwise = take n (cycle (fst t))

reverseInt :: Integer -> Integer
reverseInt = read . reverse . show

digs :: Integral x => x -> [x]
digs 0 = []
digs x = digs (x `div` 10) ++ [x `mod` 10]
