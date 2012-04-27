main = do {- Kako se riješiti viška zagrada -}

          -- varijante na temu:
          putStrLn (show (1 + 2))

          -- bez zagrada:
          putStrLn $ show $ 1 + 2

          -- ili s kompozicijom funkcija:
          (putStrLn . show) (1 + 2)

          -- ili kombinacija gornja dva:
          putStrLn . show $ 1 + 2
