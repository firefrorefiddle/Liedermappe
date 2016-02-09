


  
\version "2.16.2"
\header { tagline = ##f }

\paper {
  top-margin = 0.5\cm
  
  
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


\markup { \fontsize #8 \bold 514 {
        
        \italic \fontsize #8 \bold {\hspace#1 Wie sag ich dir Dank}
        
        
          }
}

  \markup { \hspace#10 T/M: A.Crouch, dt.R.Leimbeck}


chExceptionMusic = {
  <c f g>1-\markup { \super "4" }
}


chExceptions = #( append
  ( sequential-music-to-chord-exceptions chExceptionMusic #t)
  ignatzekExceptions)

\score {
 <<

   \chords {
     \set chordNameLowercaseMinor = ##t
     \set chordChanges = ##t
    \set chordNameExceptions = #chExceptions
    \set majorSevenSymbol = \markup { maj7 }
    \set chordRootNamer = #(chord-name->german-markup #f)
    
     
    
    a1 cis1:min e1:min fis1:7
    b1:min b1:min/a e1:7 e:7
    a1 fis1:min
    d1:maj7 d1:maj7 a2
    fis2:7 cis2:dim7 b2:min
    a2 e2:7 a1
    a1 cis2:min7 fis2:7
    b1:min e1:7
    gis2:min7 cis2:7
    f2:dim7 fis2:min
    b1:7 e1:7
    a1 cis2:min7 fis2:7
    b1:min e1:7
    gis2:min7 cis2:7
    f2:dim7 fis2:min
    a2/e d2/e a1
    gis1:min7 cis1:7
    fis1:min fis1:min
    d1 fis1:min b1:7 e1:7 \break
    

    
   }




   \new Staff <<
   \new Voice = "sopran"
    \relative c' {
      \time 4/4
      \key a \major  
      \voiceOne
      

      cis2( cis8) cis8 cis8 b8
      cis2. cis8. b16
      cis2. d8 e8
      \tuplet 3/2 {d4 cis4 b4} cis2
      d2(d8 ) d8 d8 cis8
      d2. b8 cis8
      d2( d8) d8 e8 f8
      e4. d8 d4 b'8\rest cis,8
      e4 e4 e8e8 fis8 gis8
      a4 a4 a8( gis8) a8 b8
      cis2( cis8) a8 gis8 fis8
      cis2 b'8\rest cis,8 d8 cis8
      e4. cis8 fis8 e8 d8 cis8
      e2 d2
      b'8\rest a,8 b8 cis8 cis4.b8
      a2 b'4\rest e,4
      a2.gis8. a16
      gis2 fis4 b'8\rest fis,8
      b2. ais8. b16
      a2 gis4 b8\rest gis8
      cis2. b8.cis16
      b2 a4 a8.b16
      cis2 a4 cis4
      b2. e,8. e16 \break
      %\once \override Score.RehearsalMark #'font-size = #2
      \mark \markup {\musicglyph #"scripts.segno" }
      a2. gis8. a16
      gis2 fis4( \tuplet 3/2 {fis8) fis8 fis8} 
      b2. ais8. b16
      a2 gis4 b8\rest gis8
      cis2. b8. cis16
      b2 a4( \tuplet 3/2 {a8) a8 b8}
      cis2 a4 a4
      \stemDown a2-\markup {\italic Fine}
      \stemUp           
      \bar "|." 
      
      b8\rest a8 gis8 fis8
      cis2. d4
      cis2 b'8\rest eis,8 fis8 gis8
      a4 a2 gis8 fis8
      cis2 b'8\rest fis8 fis8 gis8
      a2. fis8 gis8
      a2( a8) gis8 a8( b8)
      cis8( b8) a4 a4 cis4
      b2.
      \tupletDown\tuplet 3/2 {b8\rest e,8 e8-\markup { \italic von \musicglyph #"scripts.segno" \italic bis Fine } }
     
      \bar "||"
      
    }



   \new Lyrics \lyricsto "sopran" {  

   Wie sag ich dir Dank
   Herr, für das, was du für mich ge -- tan?
   Ich habs nicht ver -- dient,
   doch du nahmst dich um mein Le -- ben an.
   Die Stim -- men ei -- ner Mil -- lion En -- gel
   rei -- chen nicht aus, dir zu ge -- stehn,
   wie froh ich bin, 
   dass du mir hast ver -- ge -- ben.
   Herr, das be -- greif ich nie!
   O Gott, dir sei Eh -- re! O Gott, dir sei Eh -- re!
   O Gott, dir sei Eh --re! 
   Du hast Gro -- ßes ge -- tan!
   Ja, dein Sohn gab sein Le -- ben, mei -- ne Schuld ist ver -- ge ben.
   O Gott, dir sei Eh -- re, 
   du hast Gro -- ßes ge -- tan!
   Herr, all mein Tun, mein Sein,
   lass stets in dei -- nem Wil -- len stehn.
   Ja, Herr, ich will al -- le -- zeit mit dir dei -- ne We -- ge gehn.
   Nimm als
   
  }
  
\new Lyrics \lyricsto "sopran" {
    
_ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _
_ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _
_ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _
_ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ Dank, Herr,
mein Le -- ben, denn du hast mir ver -- ge -- ben.
  }
  
 
   >>

 >>
 
  }
				
  

   \markup { \vspace #6 }


    \markup \abs-fontsize #10 {My Tribute (c) Bud John Songs; adm by Unisong Music Publ. B.V.; Printrechte für D/A/CH: Hänssler Verlag, 71087 Holzgerlingen} 


   
   
   
   
  


