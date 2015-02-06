module Main where

import Data.List
import Data.Char

defaultM :: a -> Maybe a -> a
defaultM v m = maybe v id m

baseChords = (map.map) toLower ["C","D","E","F","G","A","H","B"]
isBaseChord = (`elem` baseChords)

isChord' w = isBaseChord w
             || isEnglishFlatChord w
             || isSharpChord w

stripPrefix' :: (Eq a) => [a] -> [a] -> [a]
stripPrefix' p w = defaultM w (stripPrefix p w)

stripSuffix s = reverse . stripPrefix' (reverse s) . reverse

isEnglishFlatChord = isBaseChord . stripSuffix "b"
isSharpChord = isBaseChord . stripSuffix "#"

isChord = isChord' . removeSuffixes . map toLower

removeSuffixes :: String -> String
removeSuffixes w =
  let suffixes = ["maj","min","4","6","7"]
  in foldr ($) w (map stripSuffix suffixes)

replace _ _ [] = []
replace p r (x:xs) | p x       = r : replace p r xs
                   | otherwise = x : replace p r xs
     
isChordsLine = (>0.8) . truePart . map isChord . words . removeSpecials
  where truePart xs = let trues = fromIntegral $ length . filter (==True) $ xs
                          falses = fromIntegral $ length . filter (==False) $ xs
                      in trues / falses
        removeSpecials = replace (`elem` ['(', ')', '/']) ' '

convertLines [] = []
convertLines (x:y:xs) | isChordsLine x = insertChords (chordsFromLine x) y :
                                         convertLines xs
                      | otherwise = x : convertLines (y:xs)

chordsFromLine l =
  let idxd = zip [0..] l
  in scan idxd
  where isWord = not.isSpace.snd
        ret w = (fst.head $ w, map snd w)
        scan il =
          case dropWhile (not.isWord) il of
            [] -> []
            xs -> (ret.takeWord $ xs) : (scan.dropWord $ xs)
        takeWord = takeWhile isWord
        dropWord = dropWhile isWord

insertChords cs l = go (reverse cs) l
  where toChord c = "\\[" ++ c ++ "]"
        go [] l = l
        go ((i,c):cs) l = let l' = if length l < i
                                   then l ++ replicate (i - length l) ' '
                                   else l
                              (before, after) = splitAt i l'
                          in go cs (before ++ toChord c ++ after)

main = interact (unlines . convertLines . lines)
