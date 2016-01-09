
\header{
	title = "Fels der Ewigkeiten"
}
\version "2.16.2"

\paper {
  #(set-paper-size "a4")
  margin=1.5\in
    fonts = #
    (make-pango-font-tree
     "Source Sans Pro Semibold"
     "MS Shell Dlg 2"
     "8514oem"
     (/ (* staff-height pt) 2.5))
  }
\layout {
  indent = #0
  \context {
    \Score
    \remove "Bar_number_engraver"
  }
}

\score {
  
  <<
    
\chords {
    \set chordNameLowercaseMinor = ##t
    \set chordChanges = ##t
       \germanChords 

    

    d2 a2 d1
    a2 d2 a1
    d2 e2:7 a2 d2
    a2 b2:7 a1
    a2 d2 d2 a2
    g2 a4 d4 a1
    d2 b4:min fis4 g2 e2:min
    d2 a2:7 d1
    
  
  }
  
   \new Staff <<
   \new Voice = "sopran"
    \relative c' {
      \time 4/4
      \key d \major 
      \voiceOne
      
     fis4. g8 e4 cis4
     d2 a4 a'4\rest
     g4. a8 fis4 d4
     e2. fis4\rest
     fis4. fis8 gis4 gis4
     a2 fis4( d4)
     cis4. cis8 d4 b4
     a2. a'4\rest
     g4. a8 fis4 d4
     fis2 e4 a4\rest
     b4. a8 a8( g8) g8( fis8) e2. fis4\rest
     a4. a8 d4 cis4
     cis4( b4) g4( e4)
     d4. d8 fis4 e4
     d2. a4\rest
        
      \bar "|."    
      
      
    }
    
   \new Lyrics \lyricsto "sopran" {  
     
     \set stanza = "1."
     
     Fels der E -- wig -- kei -- ten,
     Wel -- ten durch Dich stehn,
     Fels im Meer der Zei -- ten,
     Hort im Stur -- mes -- wehn.
     Fels, der in den Glu -- ten ö -- der Wü -- ste hier
     spru -- delt Le -- bens -- flu -- ten:
     Fels, Dich prei -- sen wir!

  }
  
\new Lyrics \lyricsto "sopran" {
  
  \set stanza = "2."
  
  Stern an dun -- klen Ta -- gen,
  wenn die Son -- ne flieht,
  Du lässt nicht ver -- za -- gen
  den, der auf Dich sieht.
  Stern, Du machst so hel -- le
  un -- sre We -- ge hier,
  uns -- rer Hoff -- nung Quel -- le,
  Stern, Dich prei -- sen wir!
    
  }
  
\new Lyrics \lyricsto "sopran" {
  
  \set stanza = "3."
   
   Je -- sus will fürs Le -- ben 
   Fels und Stern dir sein.
   Du brauchst nie zu be -- ben,
   nie bist du al -- lein.
   Auf dem Fel -- sen ste -- hen,
   schau -- end auf den Stern,
   heißt, als Sie -- ger ge -- hen in der Kraft des Herrn.
   
  }


\new Voice = "alt"
    \relative c' {
      \time 4/4
      \key d \major 
      \voiceTwo
      
     d4. e8 cis4 a4
     fis2 a4 s4
     e'4. cis8 d4 a4
     a2. s4
     a4. a8 d4 d4
     cis2 a2
     a4. a8 gis4 gis4
     a2. s4
     e'4. cis8 d4 a4
     a2 a4 s4
     d4. d8 e4 e8( d8)
     cis2. s4
     a4. d8 fis4 e4
     d2 b2
     a4. a8cis4 cis4
     d2. s4
            
    }
   >>
    
    \new Staff <<
   \new Voice = "tenor"
    \relative c' {
      \time 4/4
      \key d \major 
       \clef bass
      \voiceThree
      
     a4. b8 a4 e4
     d2 fis4 b,4\rest
     a'4. a8 a4 d,4
     cis2. b4\rest
     d4. d8 e4 e4
     e2 d4( fis4)
     e4. e8 e4 d4
     cis2. b4\rest
     a'4. a8 a4 d,4
     d2 cis4 b4\rest
     g'4. a8 a4 a4
     a2. b,4\rest
     fis'4. fis8 b4 ais4
     b2 e,4( g4)
     fis4. fis8 a4 g4
     fis2. b,4\rest
        
      \bar "|."   
      
    }
    
    \new Voice = "bass"
    \relative c {
      \time 4/4
      \key d \major
       \clef bass
      \voiceFour
      
     d4. g,8 a4 a4
     d2 d4 s4
     cis4. e8 d4 fis,4
     a2. s4
     d4. d8 b4 b4
     a2 d2 e4. e8 e4 e4
     a,2. s4
     a4. a8 d4 fis,4
     a2 a4 s4
     g4. fis8 cis'4 d4
     a2. s4
     d4. d8 b4 fis'4
     g2 g,2
     a4. a8 a4 a4 d2. s4
    
    }
   >>
    >>
   
  }
  		
  

   
   
   
   
  


