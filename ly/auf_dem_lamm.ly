\header{
	title = "Auf dem Lamm ruht meine Seele"
}
\version "2.16.2"

\paper {
  #(set-paper-size "a4")
  margin=1.5\in
}

\layout {
  indent = #0
}


\layout {
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


    a2. a d2. a2:sus4 a4
    a2. a e2.:7 a
    a b:7 e:7 a
    d a e:7 a
  
  }
  
   \new Staff <<
   \new Voice = "sopran"
    \relative c' {
      \time 3/4
      \key c \major  
      \voiceOne
      
      e2 g4 |
      g2 c4 |
      c4( b) a |
      a2 g4 |
      g2 c4 |
      g2 e'4 |
      d( e) d |
      c2 a4\rest |
      e'2 e4 |
      e( d) d |
      d4( b) g |
      c2 g4 |
      c( b) a |
      g2 c4 |
      e2 d4 |
      c2 a'4\rest |
    }
    
   \new Lyrics \lyricsto "sopran" {  
     
     \set stanza = "1."
     
     Auf dem Lamm ruht mei -- ne See -- le, 
     be -- tet voll Be -- wund' -- rung an.
     Al -- le, al -- le mei -- ne Sün -- den 
     hat Sein Blut hin -- weg -- ge -- tan.

  }
  
\new Lyrics \lyricsto "sopran" {
  
  \set stanza = "2."
  
    Sel' -- ger Ruh -- ort! Sü -- ßer Frie -- de 
    fül -- let mei -- ne See -- le jetzt.
    Da, wo Gott mit Won -- ne ru -- het, 
    bin auch ich in Ruh' ge -- setzt.
  }
  
\new Lyrics \lyricsto "sopran" {
  
  \set stanza = "3."
  Ru -- he fand hier mein Ge -- wis -- sen, 
  den Sein Blut -- oh rei -- cher Quell! -- 
  hat von al -- len mei -- nen Sün -- den 
  mich ge -- wa -- schen -- rein und hell.  
  }

\new Lyrics \lyricsto "sopran" {
  
  \set stanza = "4."
  Und mit sü -- ßer Ruh' im Her -- zen 
  geh' ich hier durch Kampf und Leid,
  ew' -- ge Ru -- he find ich dro -- ben 
  in des Lam -- mes Herr -- lich -- keit.
  }

\new Lyrics \lyricsto "sopran" {
  
  \set stanza = "5."
  Dort wird ihn mein Au -- ge se -- hen, 
  des -- sen Lieb' mich hier er -- quickt,
  des -- sen Treu -- e mich ge -- lei -- tet, 
  des -- sen Gnad' mich reich be -- glückt.
  }

\new Lyrics \lyricsto "sopran" {
  
  \set stanza = "6."
  Dort be -- singt des Lam -- mes Lie -- be
  Sei -- ne teu'r er -- kauf -- te Schar,
  bringt in Zi -- ons sel' -- ger Ru -- he
  Ihm ein ew' -- ges Lob -- lied dar.
  }
  
    \new Voice = "alt"
    \relative c' {
      \voiceTwo
      
      % dieser style setzt ein aufhebezeichen for "meine Sünden",
      % ohne dieses sind die noten verwirrend.
      \accidentalStyle modern
      
      c2 e4 |
      e2 e4 |
      f4( g) f |
      f2 e4 |
      e2 e4 |
      e2 g4 |
      f4( g) f | 
      e2 s4 |
      g2 g4 |
      fis2 fis4 |
      f2 f4 |
      e2 e4 |
      a4( g) f |
      e2 e4 |
      g2 f4 |
      e2 s4

      \bar "|."       
    }
   >>
  
  \new Staff <<
    
    \new Voice = "tenor"
    \relative c {
      \voiceThree      
      g'2 c4 |
      c2 g4 |
      a( b) c |
      c2 c4 |
      c2 g4 |
      c2 c4 |
      b2 b4 |
      c2 e,4\rest |
      g2 c4 |
      a2 c4 |
      b4( d) b |
      c2 c4 |
      a4( b) c |
      c2 g4 |
      g2 g4 |
      c2 e,4\rest |
      \bar "|."       
    }
    
   \new Voice = "bass"
    \relative c {
      \time 3/4
      \key c \major 
      \clef bass
      \voiceFour
            
      c2 c4 |
      c2 c4 |
      f2 f4 |      
      c2 c4 |
      c2 c4 |
      c2 c4 |
      g'2 g4 |
      c,2 s4 |
      c2 c4 |
      d2 d4 |
      g2 g4 |
      c,2 c'4 |
      f,2 f4 |
      c2 c4 |
      g2 g4 |
      c2 s4 |
      \bar "|."       
    }
   
   
   >>
    
   >>
   
  }
				
  

   
   
   
   
  


