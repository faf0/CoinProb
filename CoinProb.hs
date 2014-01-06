module CoinProb(mcnugget, mcnuggetred, coinprob, coinprobred) where

mcnugget :: (Integral a) => a -> [[a]]
mcnugget n = [[sixes, nines, twenties] |
  sixes <- map (* 6) [0..div n  6],
  nines <- map (* 9) [0..div n 9],
  twenties <- map (* 20) [0..div n  20],
  sixes + nines + twenties == n]

mcnuggetred :: (Integral a) => a -> [[a]]
mcnuggetred n =
  let mcnuggetl = mcnugget n in
    map (divlist [6, 9, 20]) mcnuggetl

coinprobcombs :: Integral a => a -> [a] -> [[a]]
coinprobcombs n []     = []
coinprobcombs n (v:vs) = map (* v) [0..div n v] : coinprobcombs n vs

coinprob :: Integral a => a -> [a] -> [[a]]
coinprob n vars =
  let comblist = sequence $ coinprobcombs n vars in
    filter (\xs -> sum xs == n) comblist

coinprobred :: Integral a => a -> [a] -> [[a]]
coinprobred n vars =
  let coinprobl = coinprob n vars in
    map (divlist vars) coinprobl

divlist :: Integral a => [a] -> [a] -> [a]
divlist []     _      = []
divlist _      []     = []
divlist (x:xs) (y:ys) = div y x : divlist xs ys

