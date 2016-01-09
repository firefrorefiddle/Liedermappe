\language "deutsch"
\header{
	title = "Freue dich, Welt"
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
 \time 4/4
    
   d2 a2 d2. e4:min
   d2 a2 d1
   g2 e2:min a1 d1 d2 g2
   d1 g1
   d1 d1 d1 
   a1 a1 
   d2. g4 d2. 
   e4:min d2 a2 d1
  
  }
  
      \new Staff <<
   \new Voice = "sopran"
    \relative c'' {
      \time 4/4
      \key d \major 
      \voiceOne
     
      
      
    d2 cis4. h8
    a2. g4
    fis2 e2
    d2. \breathe a'4
    h2. h4 cis2. cis4
    d2. \breathe d4
    d4( cis4) h4( a4)
    a4.( g8 fis4) d'4
    d4( cis4) h4( a4)
    a4.( g8 fis4) \breathe fis4
    fis4 fis4 fis4 fis8( g8)
    a2. \breathe g8( fis8)
    e4 e4 e4 e8( fis8)
    g2. \breathe fis8( e8)
    d4( d'2) h4
    a4.( g8 fis4) g4
    fis2 e2
    d1
        
      \bar "|."    
      
      
    }
    
    
    
   \new Voice = "alt"
    \relative c' {
      \time 4/4
      \key d \major 
      \voiceTwo
    
   fis2 a4. g8
   fis2. e4
   d2 cis2
   d2. a'4
   g2. g4
   e2. e4
   fis2. fis4
   fis4( a4) g4( fis4)
   fis4.( e8 d4) fis4
   fis4( a4) g4( fis4)
   fis4.( e8 d4) d4
   d4 d4 d4 d8( e8) fis2. e8( d8)
   cis4 cis4 cis4 cis8( d8)
   e2. d8( cis8)
   d4( fis2) g4
   fis4.( e8 d4) e4
   d2 cis2 s1
    
    
    }
    
\new Lyrics \lyricsto "sopran" {  
     
     
     Freu -- e dich, Welt,
     dein Kö -- nig naht!
     Mach dei -- ne To -- re weit!
     Er kommt nach sei -- nes
     Va -- ters Rat,
     der Herr der Herr -- lich -- keit,
     der Herr der Herr -- lich -- keit,
     der Herr, der Herr der Herr -- lich -- keit.

  }
      
      \new Lyrics \lyricsto "sopran" {  
     
     
     Je -- sus kommt bald,
     mach dich be -- reit!
     Er hilft aus Sün -- den -- nacht.
     Sein Zep -- ter heißt Barm -- her -- zig -- keit,
     und Lieb ist Sei -- ne Macht, 
     und Lieb ist Sei -- ne Macht,
     und Lieb, und Lieb ist Sei --  ne Macht.

  }
   
   \new Lyrics \lyricsto "sopran" {  
     
     
     Freu -- et euch doch, weil Je -- sus siegt!
     Sein wird die gan -- ze Welt.
     Des Sa -- tans Reich dar -- nie -- der liegt,
     weil Christ ihn hat ge -- fällt,
     weil Christ ihn hat ge -- fällt,
     weil Chris, weil Christ ihn hat ge -- fällt.

  }
   
      >>
    
    \new Staff <<
   \new Voice = "tenor"
    \relative c' {
      \time 4/4
      \key d \major 
      \voiceThree
      \clef bass
     
     a2 d4. d8
     d2. h4
     a2. g4
     fis2. \breathe d'4
     d2. d4
     a2. a4
     a2. \breathe a4
     a2 d2
     d2( a4) a4
     a2 d2 d2( a4) \breathe a4
     a2. a4
     a4 a4 a4 a4
     a2. \breathe a4
     a4 a4 a4 a8( g8)
     fis4( a2) \breathe d4
     d2. h4
     a2 a4( g4) fis1
      
       \bar "|." 
       
    }
    
     \new Voice = "bass"
    \relative c {
      \time 4/4
      \key d \major 
      \voiceFour
      \clef bass
    
    d2 d4. d8
    d2. g,4
    a2 a2
    d2. fis4 g2. e4 a2. a4 
    d,2. d4 d2 d2
    d2. d4 d2 d2
    d2( d4) d4
    d2. d4 d4 d4 d4 d4
    a'2. a,4
    a4 a4 a4 a4 d2. d4 d2. g,4 a2 a2 d1
    
    
    }
    
    \new Lyrics \lyricsto "bass" {  
      \override LyricText.font-shape = #'italic
     _ _ _ _ _ _ _ _ _ _ _ _
     _ _ _ _ _ _ _ _ _ _ 
     
     der Herr, der Herr der Herr -- lich -- keit,
     der Herr der Herr -- lich -- keit,
     der Herr der Herr -- lich -- keit.
    }
    
    
     \new Lyrics \lyricsto "bass" {  
     \override LyricText.font-shape = #'italic
          _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _      
     und Lieb, und Lieb ist Sei -- ne Macht,
     und Lieb ist Sei -- ne Macht,
     und Lieb ist Sei -- ne Macht.
    }
    
    
     \new Lyrics \lyricsto "bass" {  
     \override LyricText.font-shape = #'italic
     _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _      
     weil Christ, weil Christ ihn hat ge -- fällt,
     weil Christ ihn hat ge -- fällt,
     weil Christ ihn hat ge -- fällt.
    }
    
    >>
    
  
    
   >>
   
  }
				
  

   
   
   
   
  


