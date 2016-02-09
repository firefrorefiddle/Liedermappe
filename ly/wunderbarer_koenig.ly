\header{
	title = "Wunderbarer König"
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

   Wun -- der -- ba -- rer Kö -- nig, Herr -- scher von uns al -- len, 
   lass dir un -- ser Lob ge -- fal -- len!
   Dei -- ne Va -- ter -- gü -- te hast du las -- sen flies -- sen,
   ob wir schon dich oft ver -- lies -- sen.
   Hilf uns noch, stärk uns doch!
   Lass die Zun -- ge sin -- gen,
   lass die Stim -- me kling -- gen!
   
  }
  
\new Lyrics \lyricsto "sopran" {
    
    Him -- mel, lo -- be präch -- tig dei -- nes Schöp -- fers Wer -- ke
    mehr als al -- ler Men -- schen Stär -- ke!
    Gros -- ses Licht der Son -- ne schies -- se dei -- ne Strah -- len,
    die das gros -- se Rund be -- ma -- len!
    Lo -- bet gern, Mond und Stern,
    seid be -- reit zu eh -- ren, einen sol - chen Her -- ren!
   
  }
  
\new Lyrics \lyricsto "sopran" {
    
  Hal -- le -- lu -- ja brin -- ge, wer den Her -- ren ken -- net,
  wer den Her -- ren Je -- sus lie -- bet.
  Hal -- le -- lu -- ja sin -- ge, wel -- cher Chris -- tus nen -- net,
  sich von Her -- zen ihm er -- gi -- bet.
  O wohl dir! Glau -- be mir: End -- lich wirst du dro -- ben
  oh -- ne Sünd ihn lo -- ben.

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
				
  

   
   
   
   
  


