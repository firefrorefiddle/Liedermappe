


  
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

\markup { \fontsize #8 \bold 508  {
        
        \italic \fontsize #8 \bold {\hspace#1 Ich blicke voll Beugung und Staunen}
                
          }
}
  \markup { \hspace#10 T: W.F.Crafts dt.: D.Rappard M: W.G.Fisher}
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
\set chordNameExceptions = #chExceptions
\germanChords
    \partial 4 a4 a1.
    e2. a2. d1. a2. e2.:7
    a1. e2. fis2.:m 
    d2 a4 b2:m e4 a1

    a2:7 d1. a1
    a2:7 d1. a1 
    e2 a2. e2. d1.
    a2. e2.:7 a1.
  }
				
   \new Staff <<
   \new Voice = "sopran"
    \relative c' {
      \time 6/4
      \key a \major  
      
      

      \partial 4 e4 
      e4 cis'4 b4 a4 gis4 a4     | cis2. b4 r4 gis4 |
      fis4 fis4 gis4 b4 a4 fis4  | e2. r2  e4        |
      e4 cis'4 b4 a4 gis4 a4     | cis2. b4 r4 cis4 |
      fis,4. gis8 a4 a4. b8 gis4 | a2. r2  a4  |
      
      a2 fis4 fis4 gis4 a4      | e2. r2 a4        |
      a2 fis4 fis4 gis4 a4      | e2. r2  e4        |
      cis'4 d4 cis4 b4 a4 gis4  | fis2. r2 fis4    |
      e4. a8 a4 gis4 fis4 gis4 a2. r2 s4
      
      \bar "|."       
    }

  
    

   
  \new Lyrics \lyricsto "sopran" \lyricmode {
   Ich bli -- cke voll Beu -- gung und Stau -- nen
   hi -- nein in das Meer sei -- ner Gnad 
   Und lau -- sche der Bot -- schaft des Frie -- dens,
   die er mir ver -- kün -- di -- get hat.
   
   Ref.:Am Kreuz trug er mei -- ne Schuld.
   Sein Blut macht hell mich und rein;
   mein Wil -- le ge -- hört mei -- nem Gott;
   ich trau -- e auf Je -- sus al -- lein.
   
   
    }
  
  \new Lyrics \lyricsto "sopran" \lyricmode {
   
   Wie lang hab ich  müh -- voll ge -- run -- gen,
   ge -- seufzt un -- ter Sün -- de und Schmerz.
   Doch als ich mich ihm ü -- ber las -- sen, 
   da ström -- te sein Fried in mein Herz.
   
  }
  
  \new Lyrics \lyricsto "sopran" \lyricmode {
   Sanft hat sei -- ne Hand mich be -- rüh -- ret,
   er sprach: ´O mein Kind, du bist heil!´
   Ich fass -- te den Saum sei -- nes Klei -- des,
   da ward sei -- ne Kraft mir zu -- teil.
   
  }
  
  \new Lyrics \lyricsto "sopran" \lyricmode {
   Der Fürst mei -- nes Frie -- dens ist nahe,
   sein Ant -- litz ruht strah -- lend auf mir.
   O horcht sei -- ner Stim -- me, sie ru -- fet:
   ´Den Frie -- den ver -- leih -- he ich dir!´
   
  }
  
>>
   >>
}

   \markup { \vspace #5 }


 \markup \abs-fontsize #10 { public domain} 

   \markup { ___________________________________________________________________________________________________}

   
