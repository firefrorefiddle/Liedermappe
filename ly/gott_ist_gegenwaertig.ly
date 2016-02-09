


  
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




\markup { \fontsize #8 \bold 502 {
        
        \italic \fontsize #8  {\hspace#1 Gott ist gegenwärtig}
       
        
          }
}

  \markup { \hspace#10 T: G.Tersteegen M: J.Neander}
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
    \set chordNameExceptions = #chExceptions
     \germanChords
    
    g1 d2:sus4 d
    e1:min b1:7
    c2 g2 d4 g4 c4 d4 g1
    g1 d2:sus4 d
    e1:min b1:7
    c2 g2 d4 g4 c4 d4 g1
    g2 e2 a1:min
    d1 g1
    d4 g4 a4:min
    g4 d2 g2
    g2 c4 g4 c4 d4 g2
    
  
  }
  
   \new Staff <<
   \new Voice = "sopran"
    \relative c' {
      \time 4/4
      \key g \major  
      \voiceOne
      

      b'4 b4 b4 b4
      a2 a2
      g4 g4 g4 g4
      fis2 fis2
      e4 e4 d4 g4
      a4 b4 a2
      g1
      b4 b4 b4 b4
      a2 a2
      g4 g4 g4 g4
      fis2 fis2
      e4 e4 d4 g4
      a4 b4 a2
      g1 \breathe
      b2 b2 c1
      a2 a2 b1
      d4 d4 c4 b4
      a2 b2
      d4 d4 c4 b4
      a2 g2
                 
      \bar "|."       
      
    }
    
   \new Lyrics \lyricsto "sopran" {  

   Gott ist ge -- gen -- wär -- tig,
   las -- set uns an -- be -- ten
   und in Ehr -- furcht vor ihn tre -- ten.
   Gott ist in der Mit -- ten!
   Al -- les in uns schwei -- ge
   und sich in -- nigst vor ihm beu -- ge.
   Wer ihn kenn, wer ihn nennt,
   schlag die Aug -- gen nie -- der;
   kommt, er -- gebt euch wie -- der!
   
  }
  
\new Lyrics \lyricsto "sopran" {
    
    Gott ist ge -- gen -- wär -- tig,
    dem die Che -- ru -- bi -- nen
    Tag und Nacht ge -- bük -- ket die -- nen.
    ´Hei -- lig, hei -- lig, hei -- lig!´
    sin -- gen ihm zur Eh -- re
    al -- ler En -- gel ho -- he Chö -- re.
    Herr ver -- nimm un -- sre Stimm,
    da auch wir Ge -- rin -- gen
    un -- sre Op -- fer brin -- gen.
   
  }
  
\new Lyrics \lyricsto "sopran" {
    
  Du durch -- drin -- gest al -- les;
  lass dein schöns -- tes Lich -- te,
  Herr, be -- rüh -- ren mein Ge -- sich -- te!
  Wie die zar -- ten Blu -- men
  wil -- lig sich ent -- fal -- ten
  und der Son -- ne stil -- le -- hal -- ten,
  lass mich so, still und froh,
  dei -- ne Strah -- len fas -- sen
  und dich wir -- ken las -- sen!

}


  
    \new Voice = "alt"
    \relative  {
      \time 4/4
      \key g \major  
      \voiceTwo
      

      d'4 d4 e4 d4
      d2 d2
      b 4 e4 e4 e4
      e2 dis2
      e4 c4 b4 b4
      d4 d4 e4( d8 c8)
      b1
      d4 d4 e4 d4
      d2 d2
      b4 e4 e4 e4
      e2 dis2
      e4 c4 b4 b4
      d4 d4 e4( d8 c8)
      b1
      d2 e2 e1
      d2 d2 d1
      d4 g4 e8 fis 8 g4
      g4( fis4) g2
      g4 g4 g4 g4 
      g4( fis4) g2
      
           
    }
   >>
  
  
  \new Staff <<
   \new Voice = "tenor"
    \relative c {
      \time 4/4
      \key g \major 
      \clef bass
      \voiceThree
      
      g'4 b4 g4 g4
      g2 fis2
      fis4 b4 c4 b4
      b2 b2
      g4 g4 g4 g4
      fis4 g4 g4( fis4)
      g1
      g4 b4 g4 g4
      g2 fis2
      fis4 b4 c4 b4
      b2 b2
      g4 g4 g4 g4
      fis4 g4 g4( fis4)
      g1 \breathe
      g2 gis2 s1
      a2 fis2 s1
      a4 b4 c4 d4
      d2 d2
      b4 g4 g4 d'4
      e4( d8 c8) b2
      
      \bar "|."       
    }
    
  
   \new Voice = "bass"
    \relative c {
      \time 4/4
      \key g \major 
      \clef bass
      \voiceFour
      
      g4 g'4 e4 b8 c8
      d2 d2
      e4 e4 c4 g8 a8
      b2 b2
      c4 e4 g4 e4
      d4 b4 c4( d4) 
      g,1
      g'4 g4 e4 b8 c8
      d2 d2
      e4 e4 c4 g8 a8
      b2 b2
      c4 e4 g4 e4
      d4 b4 c4( d4) 
      g,1
      g'2 e2 a1
      fis2 d2 g1
      fis4 g4 a4 g4
      d2 g,2
      g'4 b,4 e4 d4
      c4( d4) g,2
      
             
    }
 
 
   >>
  >>
  }
				
  

   
   
   
   
  


