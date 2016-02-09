


  
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

\markup { \fontsize #8 \bold 506  {
        
        \italic \fontsize #8 \bold {\hspace#1 Heilig, heilig, heilig}
                
          }
}
  \markup { \hspace#10 T: G.Leuschner n.Jes6,3 M: N.Prince}
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
      \set chordRootNamer = #(chord-name->german-markup #t)
      \set chordNameExceptions = #chExceptions

      c2 c2/b a:m a:m/g:maj f1 g2:sus4 g
      c2 c2/b a:m a:m/g:maj f1 g
      c2 c2:7 f1 d2 d2:7 g1
      e2 e2:7 a:m a:m/g
      f2 g2 c1
    }

    \new Staff <<
      \new Voice = "sopran"
      \relative c' {
        \time 4/4
        \key c \major
        \voiceOne

        c4 e e8( f) g4    | g4.^( f8) e2  | a4 a c b8 a8      | g1 \breathe|
        c,4 e e8^( f) g4   | g4.^( f8) e2  | a4 a c4 c8 c      | b2. b8\rest g8 |
        g4 g8 g e4 f8 g   | a2 a4. a8    | a4 a8 a fis4 g8 a | b2 b4. b8 |
        b4 b8 b gis4 a8 b | c2 c         | c4 c d4. c8       | c1  \bar "|."
      }


      \new Lyrics \lyricsto "sopran" \lyricmode {
        Hei -- lig, hei -- lig, hei -- lig ist der Herr Ze -- ba -- oth!
        Hei -- lig, hei -- lig, hei -- lig ist der Herr Ze -- ba -- oth!
        Die Län -- der sind voll sei -- ner Eh -- re,
        Die Län -- der sind voll sei -- ner Eh -- re,
        Die Län -- der sind voll sei -- ner Eh -- re!
        Hei -- lig ist der Herr!
      }


      \new Voice = "alt"
      \relative {
        \voiceTwo
        g4 c c8( d) e4   | d2 c2         | c4 f f g8 f8          | e2( f)    |
        c4 c c8( d) e4    | d2 c2        | c4 a'8( g) f4 a8 a    | g2. s8 f  |
        e4 e8 e8 c4 c8 c  | f2 f4. f8    | fis4 fis8 fis d4 d8 d | g2 g4. g8 |
        gis4 gis8 gis e4 e8 e | a2 a     | a4 a b4. f8           | g1  \bar "|."
      }
    >>



    \new Staff <<
      \new Voice = "bass"
      \relative c {
        \time 4/4
        \key c \major
        \clef bass
        \voiceThree

        e4 g4 a4 a4
        b4.( g8) g2
        f4 c'8( b8) a4 b8 c8
        c2( b2)
        g8( f8) g4 a4 a4
        b4.( g8) g2
        f4 c'4 a8( d8) f8 e8
        d2. s8 d8
        c4 c8 c8 g4 g8 g8
        c2 c4. c8
        d4 c8 b8 a4 a8 a8
        d2 d4. d8
        e4 d8 c8 b4 b8 b8
        e2 e2
        f4 f4 f4. f8
        e1
      }


      \new Voice = "bass"
      \relative c {
        \time 4/4
        \key c \major
        \clef bass
        \voiceFour

        c4 c4 a4 a4 |
        g2 c2
        f4 f4 f4 f8 f8
        c2( d2) \breathe
        e8( d8) c4 a4 a4
        g2 c2
        f4 f8( e8) d4 d8 d8
        g2. r8 g8
        c,4 c8 c8 c4 d8 e8
        f2 f4. \breathe es8
        d4 d8 d8 d4 e8 fis8
        g2 g4. \breathe f8
        e4 e8 e8 e4 fis8 gis8
        a2 g2 \breathe
        f4 f4 g4. g8
        c,1

        \bar "|."
      }

    >>

  >>
}

   \markup { \vspace #1 }
	
\markup \abs-fontsize #10 { Resource Christian Music, für D/A/CH: CopyCare Deutschland, D-71087 Holzgerlingen} 

   \markup { ___________________________________________________________________________________________________}
