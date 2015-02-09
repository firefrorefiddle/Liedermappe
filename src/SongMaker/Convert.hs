module SongMaker.Convert 
  ( convertStream
  , convertLines) where

import SongMaker.Common
import SongMaker.Read
import SongMaker.Write

convertStream :: Stream -> Stream
convertStream s = let (h, ls) = readStream s
                  in (writeHeader h) ++
                     (unlines . convertLines $ ls) ++
                     (writeFooter h)

convertLines :: [Line] -> [Line]
convertLines [] = []
convertLines (x:y:xs) | isChordsLine x = insertChords (chordsFromLine x) y :
                                         convertLines xs
                      | otherwise = x : convertLines (y:xs)
