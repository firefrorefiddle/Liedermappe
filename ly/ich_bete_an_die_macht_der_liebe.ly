\header{
	title = "Ich bete an die Macht der Liebe"
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
   \time 3/4
     
     c1 c2. g2.:7 c2.
     f2. c2.
     c2 c4 g2 c4
     c2. c2.
     g2.:7 c2. f2. c2.
     g2:7 c4 g2.
     g2.:7 c2. c2. g2:sus4 g4
     c2 f4 c2. f2 g4:7 c2. g2.:7 c2.
     
   }
     
     \new Staff <<
   \new Voice = "sopran"
    \relative c' {
      \time 3/4
      \key c \major  
   
      
      \partial 4 g'4
          
      e2 f4 |
      g2 c4 |
      d4( c4) b4
      c2 g4
      a4 c4 a4
      g2 e4
      g4( f4) e4
      d2 \breathe g4
      e2 f4
      g2 c4
      d4( c4) b4
      c2 g4
      a4 c4 a4
      g2 e4
      \slurUp
      a4.( g8) f8( e8)
      d2 g4
      b2 g4
      c2 g4
      e'4( d4) c4
      c2 b4
      c4 b4 a4
      g2 e4
      a4( g4) f4
      e2.( d2.) c2. \break
      \slurNeutral           
      \bar "|."     
      
    }
    
   \new Lyrics \lyricsto "sopran" {  

   Ich be -- te an die Macht der Lie -- be,
   die sich in Je -- sus of -- fen -- bart.
   Ich geb  mich hin dem frei -- en Trie -- be,
   wo -- mit ich Wurm ge -- lie -- bet ward.
   Ich will, an -- statt an mich zu den -- ken
   ins Meer der Lie -- be mich ver -- sen -- ken.
   
  }
  
\new Lyrics \lyricsto "sopran" {
    
    Wie bist du mir so zart ge -- wo -- gen,
    wie seh -- net sich dein Herz nach mir!
    Durch Lie -- be sanft und tief ge -- zo -- gen,
    neigt sich mein Al -- les auch zu dir.
    O trau -- te Lie -- be, du mein Le -- ben,
    hast dich für mich ganz hin -- ge -- ge -- ben.
   
  }
  
\new Lyrics \lyricsto "sopran" {
    
  Ich fühl´s, du bist´s, dich muss ich ha -- ben,
  ich fühl´s, ich muss für dich nur sein.
  Nicht im Ge -- schöpf, nicht in den Ga -- ben,
  mein Ruh -- ort ist in dir al -- lein.
  Hier ist die Ruh, hier ist Ver -- gnü -- gen,
  drum folg ich dei -- nen sel -- gen Zü -- gen.

}

\new Lyrics \lyricsto "sopran" {
    
  Herr Je -- sus, dass dein Na -- me blie -- be
  im Grun -- de tief ge -- drü -- cket ein!
  Möcht dei -- ne gros -- se Je -- sus -- lie -- be
  in Herz und Sinn ge -- prä -- get sein!
  Im Wort, im Werk, in al -- lem We -- sen
  sei Je -- sus und sonst nichts zu le -- sen.
  
}
  
    \new Voice = "alt"
    \relative  {
      \time 3/4
      \key c \major  
      \voiceTwo
      
    \partial 4 e'4
    c2 d4
    e2 e4
    f4( e4) f4
    e2 e4
    f4 f4 f4
    e2 c4
    d2 c4
    b2 c4
    c2 d4
    e2 e4
    f4( e4) f4
    e2 e4
    f4 f4 f4
    e2 c4
    f4.( e8) d8( c8)
    b2 g'4
    f2 f4
    e2 e4
    g4( f4) e4
    e2 d4
    c4 c4 c4
    c2 c4
    c2 b4
    c2.( b2.) c2. \break
      
      
           
    }
   >>
  
  \new Staff <<
   \new Voice = "tenor"
    \relative c'' {
      \time 3/4
      \key c \major  
      \clef bass
   
      
      \partial 4 g,4
      g2 g4 g2 g4
      g2 g4
      g2 c4
      c4 a4 c4 c2 g4
      g2 g4
      g2 \breathe g4 g2 g4
      g2 g4 g2 g4
      g2 c4
      c4 a4 c4
      c2 g4
      g2 g4
      g2 g4
      d2 g4 g2 g4 g2 g4
      g2 g4 e4 e4 f4
      e2 g4 f4( e4) d4
      g2.( f2.) e2.
      
  \bar "|."
  
    }
  
   \new Voice = "bass"
    \relative c {
      \time 3/4
      \key c \major  
      \clef bass
   
      \stemDown
      \slurDown
      \partial 4 c4
      c2 c4 c2 c4
      b4( c4) d4 c2 c4
      f4 f4 f4 c2 c4
      b2 c4 g2 e'4
      c2 c4 c2 c4
      b4( c4) d4 c2 c4
      f4 f4 f4
      c2 c4 b2 b8( c8)
      g2 g4 g2 b4
      c2 c4 c4( b4) c4
      g2 g4
      c4 c4 c4 c2 c4
      f,4( g4) g4 g2.( g2.) c2.
      \stemNeutral
      
    }
    >>
  >>
  }
				
  

   
   
   
   
  


