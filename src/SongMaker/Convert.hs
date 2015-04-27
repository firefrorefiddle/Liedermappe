module SongMaker.Convert 
  ( convertStream
  , convertLines) where

import SongMaker.Common
import SongMaker.Read
import SongMaker.Write

import Data.Char

processSpecialChars = replaceSubStr "\t" "    " .
                      replaceSubStr "$" "\\brk"

convertStream :: Stream -> Stream
convertStream s = let (h, ls) = readStream s
                  in (writeHeader h) ++
                     "\n\\beginverse\n"++
                     (unlines . convertLines $ ls) ++
                     (writeFooter h)

convertLines :: [Line] -> [Line]
convertLines [] = ["\\endverse\\endsong"]
convertLines [x] | all isSpace x = convertLines []
                 | otherwise = x:convertLines []
convertLines (x:y:xs) | all isSpace x = ["\\endverse","","\\beginverse"] ++ convertLines (y:xs)
                      | isChordsLine x = (processSpecialChars .
                                          insertChords (chordsFromLine x) $ y) :
                                         convertLines xs
                      | isEndLine x = ["\\endverse\\endsong"] ++ processRest (y:xs)
                      | otherwise = x : convertLines (y:xs)

processRest xs = xs                                    
