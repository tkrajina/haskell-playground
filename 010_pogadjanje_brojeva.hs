import IO
import Random

main = do
    hSetBuffering stdin LineBuffering

    {- randomRIO nije standardna funkcija, i zato se ne može jednostavno staviti
    let num = randomRIO (1::Int, 100) -}
    num <- randomRIO (1::Int, 100)

    putStrLn "Pogodi broj između 1 i 100"

    doGuessing num

doGuessing num = do
    putStrLn "Pogodi"
    guess <- getLine

    -- read jest standardna funkcija, i ona čita sadržaj stringa i vraća vrijednost
    let guessNum = read guess

    if guessNum < num then do
        putStrLn "Broj je premali"
        doGuessing num
    else if guessNum > num then do
        putStrLn "Broj je prevelik"
        doGuessing num
    else do
        putStrLn "Točno!"
