main = do {- list comprehensions -}

          -- Lista svihh x*2 za x iz 1..10:
          print [ x*2 | x <- [1..10] ]

          -- višekratnici broja 7:
          print [ x | x <- [1..1000], (mod x 7) == 0 ]

          -- Razni primjeri:
          print [ x * y | x <- [1..10], y <- [2..20] ]
          print [ [x, y] | x <- [1..10], y <- [2..20] ]
