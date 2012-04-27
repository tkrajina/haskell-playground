main = do {- Primjer s listama -}

          let lista1 = [1, 2, 3, 4]
          let lista2 = [50, 60, 70]

          {-
          lista uvijek mora imati elemente istog tipa, dakle ne može se:
          let l = [1, 'a']
          -}

          -- Ispis liste:
          print lista1

          -- konkatenacija lista:
          let lista3 = lista1 ++ lista2
          print lista3

          -- string je lista char-ova:
          let string1 = ['h', 'e', 'l', 'l', 'o', ' ', 'w', 'o', 'r', 'l', 'd']
          let string2 = "hello world"
          print string1
          print string2

          -- dodavanje elementa na početak/kraj liste:
          let string3 = '"':string1
          -- Ali ovo ne ide:
          -- let string4 = string1:'"'
          print string3

          -- n-ti član liste:
          print (lista1 !! 2)

          -- liste mogu sadržavati liste
          let listaListi = [[1 ,2 ,3 ,4] ,[5 ,3 ,3 ,3] ,[1 ,2 ,2 ,3 ,4] ,[1 ,2 ,3]]

          print listaListi

          -- liste se mogu uspoređivati:
          let usporedba = if lista1 < lista2 then "manja" else "veća"
          print usporedba

          -- prvi član:
          print (head lista1)

          -- sve osim prvog člana:
          print (tail lista1)

          -- zadnji član:
          print (last lista1)

          -- sve osim zadnjeg člana:
          print (init lista1)

          -- broj članova u listi:
          print (length (lista1 ++ lista2))

          -- provjera je li lista prazna:
          print (null lista1)
          print (null [])

          -- n prvih članova liste:
          print (take 2 lista1)

          -- primjer s infix pozivom iste metode:
          print (2 `take` lista1)

          -- micanje prvih nekoliko članova s početka liste:
          print (drop 2 lista1)

          -- najveći i najmanji član liste:
          print (maximum lista1)
          print (minimum lista1)

          -- zbroj i umnožak članova liste:
          print (sum lista1)
          print (product lista1)
