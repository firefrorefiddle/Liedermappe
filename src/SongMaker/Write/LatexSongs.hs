module SongMaker.Write.LatexSongs
  ( insertChords
  , writeHeader
  , writeFooter) where

import SongMaker.Common

import Data.List

insertChords :: ChordIndexes -> Line -> Line
insertChords cs l = go (reverse cs) l
  where toChord c = "\\[" ++ c ++ "]"
        go [] l = l
        go ((i,c):cs) l = let l' = if length l < i
                                   then l ++ replicate (i - length l) ' '
                                   else l
                              (before, after) = splitAt i l'
                          in go cs (before ++ toChord c ++ after)


get k = filter ((==k).fst)

writeHeader :: Header -> Stream
writeHeader h = "\\beginsong{"++titles++"}["++other++"]"
  where titles = intercalate " \\\\ " . map snd . get "title" $ h
        other = intercalate "," . filter (not.null) . map toSongs $ h
        toSongs (k,v) = case mapKey k of
          Nothing -> []
          Just k' -> k'++"={"++v++"}"
        mapKey = flip lookup [ ("author", "by")
                             , ("copyright", "cr")
                             , ("reference", "sr")
                             , ("license", "li")
                             , ("extra-index", "index")
                             , ("extra-title-index", "ititle")]

writeFooter :: Header -> Stream
writeFooter _ = ""
