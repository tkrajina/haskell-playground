
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
To znači da tip Maybe a može biti ili Nothing ili Just a
Npr. funkcija za prvi element liste bi mogla vraćati Maybe a
-}

{-
u principu, funkcije koje sad rade s Maybe1 a bi trebale posebno hendlati i situaciju
kad dobiju Nothing1 i onu kad dobiju Just1 a
-}

firstListElement :: [a] -> Maybe1 a
firstListElement [] = Nothing1
firstListElement (x:xs) = Just1 x

-- Rekurzivni tip (lista):
data List a = Nil
            | Cons a (List a)

listLength Nil = 0
listLength (Cons x xs) = 1 + listLength xs

-- enumerirani tipovi se mogu dobiti jednostavno s višestrukim praznim konstruktorima:
data Color = Red
           | Green
           | Blue
-- ako je potrebna specifična boja:
--           | CustomColor Int Int Int

getColor Red = (1, 0, 0)
getColor Green = (0, 1, 0)
getColor Blue = (0, 0, 1)
--getColor (CustomColor r g b) = (r, g, b)

main = do
    let pair = Pair 1 2
    print (getFirstDataElement pair)
    print (getSecondDataElement pair)
