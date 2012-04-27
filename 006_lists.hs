main = do {- Primjer s listama II -}

          let listaBrojeva = [1..20]
          let listaSlova = ['a'..'z']

          print listaBrojeva
          print listaSlova

          let listaNeparnihBrojeva = [3,5..101]
          print listaNeparnihBrojeva

          let listaSilaznihBrojeva = [100,99..1]
          print listaSilaznihBrojeva

          {- cycle stvara beskonačnu listu od neke liste, i zato bi se ovo zavrtilo :
          u beskonačnost: -}
          -- print (cycle [1, 2, 3])

          -- prvih 10 članova takvog ciklusa:
          print (take 10 (cycle [1, 2, 3]))

          -- lista stvorena ponavljanjem jednog elementa:
          print (take 15 (repeat 5))

          -- što je isto kao i:
          print (replicate 15 5)
