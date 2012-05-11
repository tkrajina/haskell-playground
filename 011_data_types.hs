
{-
custom data type. Ovo deklarira tip i (konstruktor) funkciju Pair :: a -> b -> Pair a b
-}
data Pair a b = Pair a b

getFirstDataElement (Pair a b) = a
getSecondDataElement (Pair a b) = b

{-
Višestruki konstruktori (tip već postoji u standardnom library-iju (Prelude), zato su
ovdje imenovani s 1 na kraju:
-}
data Maybe1 a = Nothing1
              | Just1 a

{-
To znači da tip Maybe a može biti ili Nothinig ili Just a
Npr. funkcija za prvi element liste bi mogla vraćati Maybe a
-}

{-
u principu, funkcije koje sad rade s Maybe1 a bi trebale posebno hendlati i situaciju
kad dobiju Nothing1 i onu kad dobiju Just1 a
-}

firstListElement :: [a] -> Maybe1 a
firstListElement [] = Nothing1
firstListElement (x:xs) = Just1 x

main = do
    let pair = Pair 1 2
    print (show (getFirstDataElement pair))
    print (show (getSecondDataElement pair))
