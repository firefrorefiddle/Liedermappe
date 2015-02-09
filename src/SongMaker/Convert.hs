module SongMaker.Convert 
  ( convertStream
  , convertLines) where

import SongMaker.Common
import SongMaker.Read
import SongMaker.Write

convertStream :: Stream -> Stream
convertStream = unlines . convertLines . lines

convertLines :: [Line] -> [Line]
convertLines [] = []
convertLines (x:y:xs) | isChordsLine x = insertChords (chordsFromLine x) y :
                                         convertLines xs
                      | otherwise = x : convertLines (y:xs)
