main = do {- tuples -}
          
          {- tuple (n-torka) može biti sastavljena i od elemenata različitih
          tipova -}
          let tuple = (1, "a", 'a')
          print tuple

          -- prvi i drugi član para:
          print $ fst (1, 2)
          print $ snd (1, 2)

          {- zip uzima dvije liste i dobijamo listu uređenih parova s 
          elementima iz prvog i drugog: -}
          let tuple1 = [1, 2, 3, 4]
          let tuple2 = "qwer"
          print $ zip tuple1 tuple2

          {- kad se duljine listi ne slažu, rezultat ima onoliko članova 
          koliko ima manja lista: -}
          print $ zip [ 1, 2, 3, 4, 5 ] ['a', 'b']

          -- spisak svih pravokutnih trokuta sa stranicama <= 20
          print [ (a, b, c) | a <- [1..10], b <- [1..10], c <- [1..10], a^2 + b^2 == c^2 ]
