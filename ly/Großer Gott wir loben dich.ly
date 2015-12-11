\header{
	title = "Großer Gott wir loben dich"
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

\score {
  
  <<
    
    \chords {
\set chordNameLowercaseMinor = ##t
\set chordChanges = ##t
\germanChords
    
    g1. d2. g2. g2. e2.:m
    g2. g4  d2   
    g1. d2. g2. g2. e2.:m
    g2. g4  d2 
    
    d2. a2.:m e2.:m g2.
    c2  a4:m b2:m e4:m 
    a2:m d4 g2.
    
  
  }
  
   \new Staff <<
   \new Voice = "sopran"
    \relative c' {
      \time 6/4
      \key g \major  
      \voiceOne
      

      g'2 g4 g4( fis4) g4 | a4( b4) a4 g2 a4\rest     |
      b2 b4 b4( a4) g4    | d'4( c4) b4 b4 a4 a4\rest  |
      g2 g4 g4( fis4) g4  | a4( b4) a4 g2 a4\rest      |
      b2 b4 b4( a4) g4    | d'4( c4) b4 b4 a4 a4\rest  |
      
      a2 b4 c4( b4) a4    | b2 c4 d2 a4\rest         |
      e'2 e4 d4( c4) b4    | c4( b4) a4 g2.        |
      
      \bar "|."       
    }
   \new Lyrics \lyricsto "sopran" {  

   Gro -- ßer Gott wir lo -- ben dich,
   Herr, wir prei -- sen dei -- ne Stär -- ke.
   Vor dir neigt die Er -- de sich
   und be -- wun -- dert dei -- ne Wer -- ke.
   Wie du warst vor al -- ler Zeit,
   so bleibst du in E -- wig -- keit
   
  }
  
\new Lyrics \lyricsto "sopran" {
    Al -- les, was dich prei -- sein kann,
    Che -- ru -- bim und Se -- ra -- phi -- men,
    stim -- men dir ein Lob -- lied an;
    al -- le En -- gel, die dir die-- nen.
    ru -- fen dir in sel -- ger Ruh,
    Hei --  lig, hei -- lig, hei -- lig! zu.
   
  }
  
\new Lyrics \lyricsto "sopran" {
    Hei -- lig, Herr, Gott Ze -- ba -- oth!
    Hei -- lig, Herr der Him -- mels -- hee -- re!
    Star -- ker Hel -- fer in der Not!
   Him -- mel, Er -- de, Luft und Mee -- re
    sind er -- füllt von dei -- nem Ruhm,
    al -- les ist dein Ei -- gen tum.
  }


  
    \new Voice = "alt"
    \relative c' {
      \time 6/4
      \key g \major  
      \voiceTwo
      

      b2 d4 b4( d4) d4       | d4( b4) d4 d2  s4  |
      d2 dis4 e2 d4          | e2 e4 d4 d4 s4     |
      b2 d4 b4( d4) d4       | d4( b4) d4 d2 s4   |
      d2 dis4 e2 d4          | e2 e4 d4 d4 s4     |
      
      e2 d4 d2 d4            | d2 g4 g2 s4        |
      g2 a4 d,4( e8 fis8) g4  | a4( g4) fis4 d2. |
      
      \bar "|."       
    }
   >>
  
  \new Staff <<
   \new Voice = "bass"
    \relative c {
      \time 6/4
      \key g \major 
      \clef bass
      \voiceThree
      

      g2 b4 d4( c4) b4    | d4( e4) d4 g2 d4\rest  |
      g,4( g'4) fis4 e4( c4) b4 | c2 cis4 d4 d4 d4\rest  |
      g,2 b4 d4( c4) b4    | d4( e4) d4 g2 d4\rest  |
      g,4( g'4) fis4 e4( c4) b4 | c2 cis4 d4 d4 d4\rest  |
      
      c2 b4 a4( g4) d'4    | g4( fis4) e4 b2 a4\rest         |
      c4( e4) fis4 g4  ( d4) e8( d8) c4( d4) d4   | g,2.     |
      
      \bar "|."       
    }
  >>
 
   >>
  }
				
  

   
   
   
   
  


