module SongMaker.Convert 
  ( convertStream
  , convertLines) where

import SongMaker.Common
import SongMaker.Read
import SongMaker.Write

import Data.Char

convertStream :: Stream -> Stream
convertStream s = let (h, ls) = readStream s
                  in (writeHeader h) ++
                     "\n\\beginverse\n"++
                     (unlines . convertLines $ ls) ++
                     (writeFooter h)

convertLines :: [Line] -> [Line]
convertLines [] = []
convertLines (x:xs)   | all isSpace x =
  case xs of
    [] -> ["\\endverse"]
    ys -> ["\\endverse","","\\beginverse"]++convertLines xs
convertLines (x:y:xs) | isChordsLine x = insertChords (chordsFromLine x) y :
                                         convertLines xs
                      | otherwise = x : convertLines (y:xs)
