module SongMaker.Write.LatexSongs (insertChords) where

import SongMaker.Common

insertChords :: ChordIndexes -> Line -> Line
insertChords cs l = go (reverse cs) l
  where toChord c = "\\[" ++ c ++ "]"
        go [] l = l
        go ((i,c):cs) l = let l' = if length l < i
                                   then l ++ replicate (i - length l) ' '
                                   else l
                              (before, after) = splitAt i l'
                          in go cs (before ++ toChord c ++ after)

