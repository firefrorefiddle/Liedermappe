module SongMaker.Read 
   ( module SongMaker.Read.Chord
   , readStream
   ) where

import SongMaker.Read.Chord
import SongMaker.Read.Header
import SongMaker.Common

readStream :: Stream -> (Header, [Line])
readStream s = (readHeader s, skipHeader s)

