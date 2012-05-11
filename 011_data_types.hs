
{-
custom data type. Ovo deklarira tip i (konstruktor) funkciju Pair :: a -> b -> Pair a b
-}
data Pair a b = Pair a b

getFirstDataElement (Pair a b) = a
getSecondDataElement (Pair a b) = b

main = do
    let pair = Pair 1 2
    print (show (getFirstDataElement pair))
    print (show (getSecondDataElement pair))
