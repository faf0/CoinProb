## CoinProb

### About

Check out http://en.wikipedia.org/wiki/Coin_problem for a description of the coin problem.

CoinProb is a Haskell program for computing positive integers k_1, k_2, ..., k_n for given pisitive integers a_1, a_2, ..., a_n and a given positive integer b, such that the linear Diophantine equation

    b = k_1 * a_1 + k_2 * a_2 + ... + k_n * a_n

is satisfied.

CoinProb also allows to compute solutions for the special McNugget case where a_1 = 6, a_2 = 9, and a_3 = 20 (cf. http://en.wikipedia.org/wiki/Coin_problem).

The underlying algorithm of CoinProb cycles through possible instances of k_1, k_2, ..., k_n. However, there are more efficient approaches to solve this problem (cf., e.g., "Faster Algorithms for Frobenius Numbers" by Beihoffer et al.).

### Examples

The *red functions yield a list of possible k_1, k_2, ..., k_n combinations, whereas the other functions yield a list of possible k_1 * a_1, k_2 * a_2, ..., k_n * a_n combinations.

    coinprobred 44 [6,9,20]
      [[1,2,1],[4,0,1]]
    coinprob 44 [6,9,20]
      [[6,18,20],[24,0,20]]
    mcnuggetred 44
      [[1,2,1],[4,0,1]]
    mcnugget 44
      [[6,18,20],[24,0,20]]

### Copyright

Copyright 2014 Fabian Foerg

Licensed under the GPLv3: http://www.gnu.org/licenses/gpl-3.0.html

