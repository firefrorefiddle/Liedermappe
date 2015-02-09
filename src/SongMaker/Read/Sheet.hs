module SongMaker.Read.Sheet (isSheetLine) where

isSheetLine :: Line -> Bool
isSheetLine = ("|" `isPrefixOf`)
