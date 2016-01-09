\header{
	title = "Dem, der uns liebt"
}
\version "2.16.2"

\paper {
  #(set-paper-size "a4")
  margin=1.5\in
}

\layout {
  indent = #0
  \context {
    \Score
    \remove "Bar_number_engraver"
  }
}

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
    \set chordNameExceptions = #chExceptions
     \germanChords


   d2 a2:7 d1
    d2 d4:sus4 d4
    a1 b2:min a2 d2
    g2 d2 a2:7 d1
    g1 d1 a2 e2:7 a1
    a1 a2 d2 a2 e2:7 a1
    d2 d2:7 g1
    e2 e2:7 a2 a2:7
    d2 d2:7 g2
    e2:min
    a2:sus4 a2:7 d1
    a1 d1 g2 a2:7 d1
   
    
  
  }
  
      \new Staff <<
   \new Voice = "sopran"
    \relative c'' {
      \time 4/4
      \key d \major 
      \voiceOne
     
      
      
     a2 g4 e4
     d2 a'4\rest a,4
     d4 fis4 e4 d4
     a'4( g4) fis4 e4
     d2 e4( g4) fis4 a4\rest g4( e4)
     d2 cis2
     d2 a'4\rest d,4
     d4(g4) b4( d4)
     a2 fis4 d4
     a4 a4 d4 d4 cis2 a'4\rest e4
     a2 e2
     a4 e4 fis4 d4
     cis2( b2)
     a2 b'2\rest
     d,2 d4 d4
     d4 d4 d2
     e2 e2
     e2 \breathe e4( g4)
     fis2 a2
     a4(g4) fis4( e4)
     d2 cis2
     d2 b'2\rest
     g1
     fis1
     e1
     d1
        
      \bar "|."    
      
      
    }
    
    
    
   \new Voice = "alt"
    \relative c' {
      \time 4/4
      \key d \major 
      \voiceTwo
    
    fis2 e4 cis4
    d2 s4 a4
    a4 d4 cis4 d4
    cis2 cis4 cis4
    d2 cis4( e4)
    d4 s4 h2
    a2 a2 a2 s4 a4
    h2 d2
    d2 d4 a4
    a4 a4 gis4 gis4 
    a2 s4 cis4
    cis2 cis2
    e4 cis4 d4 h4
    a2( gis2)
    a2 s2
    a2 cis4 cis4 
    h4 h4 h2
    h2 h2
    a2 a2
    d2 c2
    c4( h4) a4( h4)
    a2 a2
    a2 s2
    cis1 d1 d2( cis2) a1
    
    
    }
    
\new Lyrics \lyricsto "sopran" {  
     
     
     Dem, der uns liebt
     und uns von un -- sern Sün -- den
     ge -- wa -- schen hat in sei -- nem Blut,
     und uns ge -- macht hat
     zu ei -- nem Kö -- nig -- tum,
     zu Pries -- tern, sei -- nem
     Gott und Vat -- ter:
     Ihm sei die Herr -- lich -- keit
     und die Macht von E -- wig -- keit
     zu E -- wig -- keit!
     A -- men, A -- men!

  }
      
      >>
    
    \new Staff <<
   \new Voice = "tenor"
    \relative c' {
      \time 4/4
      \key d \major 
      \voiceThree
      \clef bass
     
      a2 a4 g4
      fis2 cis4\rest fis4
      fis4 a4 g4 fis4
      e2 a4 g4
      fis2 a2
      a4 cis,4\rest g'2
      fis2 g2
      fis2 cis4\rest fis4
      g2 g4( h4)
      fis2 a4 fis4
      e4 e4 e4 e4
      e2 cis4\rest a'4
      e2 a2
      a4 a4 a4 fis4
      e2( d2) cis2 e2\rest
      fis2 fis4 fis4
      g4 d4 g2
      e2 d2
      cis2 \breathe cis2
      d2 d2
      d2 d4( g4)
      fis2 g2
      fis2 e2\rest
      e1 fis1 h2( a4 g4) 
      fis1
      
       \bar "|." 
       
    }
    
     \new Voice = "bass"
    \relative c {
      \time 4/4
      \key d \major 
      \voiceFour
      \clef bass
    
    d2 cis4 a4
    d2 s4 d4
    d4 d4 d4 d4
    a2 a4 a4
    d2 a4( cis4)
    d4 s4 g,2
    a2 a2 d2 s4 d4
    d2 d2 d2 d4 d4
    cis4 cis4 h4 h4
    a2 s4 a4
    a2 a2
    cis4 a4 d4 d4
    e1
    a,2 s2
    d2 a4 a4
    g4 g4 g2
    gis2 gis2
    a2 a2
    d2
    d2 g,2 
    g2 g2
    a2 a2 s2
    a1 a1 g2( a2) d1
    
    }
    
    >>
    
  
    
   >>
   
  }
				
  

   
   
   
   
  


