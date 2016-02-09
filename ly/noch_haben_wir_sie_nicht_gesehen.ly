


  
\version "2.16.2"
\header { tagline = ##f }

\paper {
  top-margin = 1\cm
  
  
  fonts = #
  (make-pango-font-tree
   "Source Sans Pro Semibold"
   "MS Sans Serif"
   "8514oem"
   (/ (* staff-height pt) 2.5))
}

  #(set-paper-size "a4")
  

\layout {
  \context {
    \Score
    \remove "Bar_number_engraver"
  }
}
\layout {
  indent = #0
 
}
\markup { ___________________________________________________________________________________________________}

\markup { \fontsize #8 \bold 512  {
        
        \italic \fontsize #8 \bold {\hspace#1 Noch haben wir sie nicht gesehn}
                
          }
}
  \markup { \hspace#10 T/M: F.Price, dt.M.Siebald}
   \markup { \vspace #1 }


chExceptionMusic = {
  <a, d e>1-\markup { \super "4" }
}


chExceptions = #( append
  ( sequential-music-to-chord-exceptions chExceptionMusic #t)
  ignatzekExceptions)

\score {
  
  <<
    
    \chords {
\set chordNameLowercaseMinor = ##t
\set chordChanges = ##t
 \time 4/4
\germanChords

    d4
    d1 fis1:min g1 a1
    d1 b1:min e1:min a1
    d1 fis1:min g1 a1
    d1 b1:min e1:min e1:min
    a1 a1:7 d2 g2 d1
    
  
  }
  
   \new Staff <<
   \new Voice = "sopran"
    \relative c'' {
      \time 4/4
      \key d \major 
      \voiceOne
      
      \partial 4 a4
      a4 a4 a4. a8
      a4 a8 a4. a4
      a4 g4 fis4 g8 a8( a2.) g4
      fis4 fis4 fis4. fis8
      fis4 fis8 fis4. a4
      g4 fis4 e4 d4
      e2. gis8\rest a8
      a4 a4 a4. a8
      a4 a8 a4. a4 
      a4 g4 fis4 g8 a8( a2 a4) \slurDashed g8( g8) \slurSolid
      fis4 fis8 fis4. fis4
      fis4 fis8 fis4. g4
      fis4 fis4 e4 d8 e8( e2.) e4
      e4 e4 e8 d4.
      e2 fis2
      e4 d4 d8 d4.
      d2.s4
        
      \bar "|."    
      
    }
    
   \new Lyrics \lyricsto "sopran" {  
     
     \set stanza = "1."
     
     Noch ha -- ben wir sie nicht ge -- sehn, 
     noch war -- ten wir da -- rauf.___ 
     Noch neh -- men wir für un -- re Hoff -- nung 
     Spott und Hohn in Kauf
     und wis -- sen doch: es kommt ein Tag,
     da hört das War -- ten auf, 
     denn g´ra -- de dann wenn je -- der -- mann
     es nicht für mö -- glich hält,
     dann wer -- den wir sie se -- hen,
     Got -- tes neu -- e Welt.

  }
  
\new Lyrics \lyricsto "sopran" {
  
  \set stanza = "2."
  
  Dort wird es sein, wo kei -- ner mehr
  den an -- de -- ren ver -- gisst,
  wo nicht mehr auf ver -- brann -- tes Land
  das Blut von Kin -- dern fließt,
  wo kei -- ner mehr nach Frie -- den schreit,
  weil end -- lich Frie -- de ist,
  weil nicht mehr un -- ser Wil -- le,
  son -- dern Got -- tes Lie -- be zählt,
  in sei -- ner Ge -- gen -- wart,
  in Got -- tes neu -- er Welt.
    
  }
  
\new Lyrics \lyricsto "sopran" {
  
  \set stanza = "3."
   
   Dann ken -- nen wir das Wann, War -- rum, 
   Wie -- lange und Wo -- her,
   dann quä -- len tau -- send un -- ge -- lös -- te
   Fra -- gen uns nicht mehr;
   denn uns -- re letz -- te Ant -- wort ist uns
   Chris -- tus, un -- ser Herr,
   der uns und uns -- re Dun -- kel -- heit
   mit sei -- nem Licht er - hellt,
   der un -- sre Son -- ne ist in 
   Got -- tes neu -- er Welt.
   
  }

\new Lyrics \lyricsto "sopran" {
  
  \set stanza = "4."
  
  Noch war -- ten wir da -- rauf,
  noch ha -- ben wir sie nicht ge -- sehn.
  noch ha -- ben wir in die -- ser Welt
  ein Le -- ben zu be -- stehn.
  Schon heu -- te soll in un -- srem Le -- ben
  Got -- tes Wort ge -- schehn,
  denn_so na -- he sich ein je -- der hier an 
  Got -- tes Wor -- te hält,
  ge -- nau so na -- he ist er
  Got -- tes neu -- er Welt.
  
  }

   >>
     >>
   
  }
				

   \markup { \vspace #3 }


    \markup \abs-fontsize #10 {Communique Music - für D,A,CH: Rudolf Slezak Musikverlag, Hamburg} 

   \markup { ___________________________________________________________________________________________________}
  

   
   
   
   
  


