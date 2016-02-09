


  
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

\markup { \fontsize #8 \bold 501  {
        
        \italic \fontsize #8 \bold {\hspace#1 Mir ist Erbarmung widerfahren}
                
          }
}
  \markup { \hspace#10 T: P.Hiller M: G.Neumark}
   \markup { \vspace #1 }

 

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
 \time 3/4
\germanChords

    g2.:min 
    g2.:min
    c2.:min
    d2.f2.
    g2.:min
    c2:min d4 g2.:min
    g2.:min 
    g2.:min
    c2.:min
    d2.f2.
    g2.:min
    c2:min d4 g2.:min
    f2. bes2. f2. bes2.
    g2.:min
    d2. c2:min d4
    g2.:min
    
  
  }
  
   \new Staff <<
   \new Voice = "sopran"
    \relative c' {
      \time 3/4
      \key g \minor  
      \voiceOne
      
      d4 g4 a4 |
      bes2 a4 
      g2 a4 |
      fis4 d4 a'4\rest |
      f4 f4 e4 |
      d2 g4 
      g2 fis4 |
      g2.|
      d4 g4 a4 |
      bes2 a4 
      g2 a4 |
      fis4 d4 a'4\rest |
      f4 f4 e4 |
      d2 g4 
      g2 fis4 |
      g2.|
      a4 bes4 c4 |
      d2 d4 
      c2 c4 |
      bes2. \breathe|
      bes4 a4 g4 |
      fis2 g4 
      g2 fis4|
      g2.
      \bar "|."    
      
      
    }
    
   \new Lyrics \lyricsto "sopran" {  
     
     \set stanza = "1."
     
     Mir ist Er -- bar -- mung wi -- der -- fah --ren,
     Er -- bar -- mung, de -- ren ich nicht wert!
     Das zähl ich zu dem Wun -- der -- ba -- ren;
     mein stol -- zes Herz hat´s nie be -- gehrt.
     Nun weiß ich das und bin er -- freut
     und rüh -- me die Barm -- her -- zig -- keit.

  }
  
\new Lyrics \lyricsto "sopran" {
  
  \set stanza = "2."
  
  Ich hat -- te nichts als Zorn ver -- die -- net
  und soll bei Gott in Gna -- den sein!
  Gott hat mich mit sich selbst ver -- süh -- net
  uns macht durchs Blut des Sohns mich rein.
  Wo kam dies her, wa -- rum ge -- schiecht´s?
  Er -- bar -- mung ist´s und wei -- ter nichts. 
    
  }
  
\new Lyrics \lyricsto "sopran" {
  
  \set stanza = "3."
   
   Das muss ich dir, mein Gott, be -- ken -- nen,
   das rühm ich, wenn ein Mensch mich fragt;
   ich kann es nur Er -- bar -- mung nen -- nen,
   so ist mein gan -- zes Herz ge -- sagt.
   Ich beu -- ge mich und bin er -- freut
   und rüh -- me die Barm -- her -- zig -- keit.
   
  }

\new Lyrics \lyricsto "sopran" {
  
  \set stanza = "4."
  
  Dies lass ich kein Ge -- schöpf mir rau -- ben,
  dies soll mein ein -- zig Rüh -- men sein.
  Auf dies Er -- bar -- men will ich glau -- ben,
  auf die -- ses bet ich auch al -- lein,
  auf die -- ses duld ich in der Not,
  auf die -- ses hoff ich noch im Tod.
  
  }


   
   >>
  
     
   >>
   
  }
				
     \markup { \vspace #1 }

 \markup \abs-fontsize #10 { public domain} 

   \markup { ___________________________________________________________________________________________________}

   

   
   
   
   
  


