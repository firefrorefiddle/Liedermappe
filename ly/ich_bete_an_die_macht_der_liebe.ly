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
  <a d' e'>1-\markup { \super "4" }
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
     
     a1 a2. e2.:7 a2.
     d2. a2.
     a2. e2 a4
     a2. a2.
     e2.:7 a2. d2. a2.
     d2. e2.
     e2.:7 a2. a2. e2:sus4 e4
     d2.a2. d2. a2. e2.:7 a2.
     
   }
     
     \new Staff <<
   \new Voice = "sopran"
    \relative c'' {
      \time 3/4
      \key a \major  
   
      
      \partial 4 e,4
          
      cis2 d4 |
      e2 a4 |
      b4( a4) gis4
      a2 e4
      fis4 a4 fis4
      e2 cis4
      e4( d4) cis4
      b2 \breathe e4
      cis2 d4
      e2 a4
      b4( a4) gis4
      a2 e4
      fis4 a4 fis4
      e2 cis4
      \slurUp
      fis4.( e8) d8( cis8)
      b2 e4
      gis2 e4
      a2 e4
      cis'4( b4) a4
      a2 gis4
      a4 gis4 fis4
      e2 cis4
      fis4( e4) d4
      cis2.( b2.) a2. \break
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
      \key a \major  
      \voiceTwo
      
    \partial 4 cis'4
    a2 b4
    cis2 cis4
    d4( cis4) d4
    cis2 cis4
    d4 d4 d4
    cis2 a4
    b2 a4
    gis2 a4
    a2 b4
    cis2 cis4
    d4( cis4) d4
    cis2 cis4
    d4 d4 d4
    cis2 a4
    d4.( cis8) b8( a8)
    gis2 e'4
    d2 d4
    cis2 cis4
    e4( d4) cis4
    cis2 b4
    a4 a4 a4
    a2 a4
    a2 gis4
    a2.( gis2.) a2. \break
      
      
           
    }
   >>
  
  \new Staff <<
   \new Voice = "tenor"
    \relative c' {
      \time 3/4
      \key a \major  
      \clef bass
   
      
      \partial 4 e,4
      e2 e4 e2 e4
      e2 e4
      e2 a4
      a4 fis4 a4 a2 e4
      e2 e4
      e2 \breathe e4 e2 e4
      e2 e4 e2 e4
      e2 a4
      a4 fis4 a4
      a2 e4
      e2 e4
      e2 e4
      b2 e4 e2 e4 e2 e4
      e2 e4 cis4 cis4 d4
      cis2 e4 d4( cis4) b4
      e2.( d2.) cis2.
      
  \bar "|."
  
    }
  
   \new Voice = "bass"
    \relative c' {
      \time 3/4
      \key a \major  
      \clef bass
   
      \stemDown
      \slurDown
      \partial 4 a,4
      a2 a4 a2 a4
      gis4( a4) b4 a2 a4
      d4 d4 d4 a2 a4
      gis2 a4 e'2 cis4
      a2 a4 a2 a4
      gis4( a4) b4 a2 a4
      d4 d4 d4
      a2 a4 gis2 gis8( a8)
      e'2 e4 e2 gis,4
      a2 a4 a4( gis4) a4
      e'2 e4
      a,4 a4 a4 a2 a4
      d4( e4) e4 e2.( e2.) a,2.
      \stemNeutral
      
    }
    >>
  >>
  }
				
  

   
   
   
   
  


