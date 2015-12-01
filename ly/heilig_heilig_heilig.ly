% Diese Datei kann mit GNU Lilypond (www.lilypond.org) in ein PDF-Notenblatt uebersetzt werden.

\header{
	title = "Heilig, heilig, heilig"
}
\version "2.16.2"

\paper {
  #(set-paper-size "a4")
  margin=3.5\in
}

\layout {
  indent = #0
}

chExceptionMusic = {
  <c f g>1-\markup { \super "4" }
}

chExceptions = #( append
  ( sequential-music-to-chord-exceptions chExceptionMusic #t)
  ignatzekExceptions)


%% Zuerst werden die einzelnen Elemente (Stimmen, Akkorde...) definiert,
%% weiter unten dann zu einem \score kombiniert.

Akkorde = 
  \chords {
    \set chordNameLowercaseMinor = ##t
    \set chordNameExceptions = #chExceptions
    \germanChords
    c2 c2/b a:m a:m/g:maj f1 g2:sus4 g
    c2 c2/b a:m a:m/g:maj f1 g 
    c2 c2:7 f1 d2 d2:7 g1
    e2 e2:7 a:m a:m/g
    f2 g2 c1    
  }

Sopran =
   \new Voice = "sopran"
    \relative c' {
      \time 4/4
      \key c \major  
      \voiceOne

      c4 e e8( f) g4    | g4.( f8) e2  | a4 a c b8 a8      | g1        | \break 
      c,4 e e8( f) g4   | g4.( f8) e2  | a4 a c4 c8 c      | b2. r8 g8 | \break
      g4 g8 g e4 f8 g   | a2 a4. a8    | a4 a8 a fis4 g8 a | b2 b4. b8 | 
      b4 b8 b gis4 a8 b | c2 c         | c4 c d4. c8       | c1  \bar "|."       
    }

Alt =
   \new Voice = "alt"
     \relative {
     \voiceTwo
      g4 c c8 d e4   | d2 c2         | c4 f f g8 f8          | e2 f   | 
      c4 c c8 d e4    | d2 c2        | c4 a'8 g f4 a8 a      | g2. r8 f  |
      e4 e8 e8 c4 c8 c  | f2 f4. f8  | fis4 fis8 fis d4 d8 d | g2 g4. g8 | 
      gis4 gis8 gis e4 e8 e | a2 a   | a4 a b4. f8           | g1  \bar "|."       
    }

Tenor =
   \new Voice = "tenor"
    \relative e {
      \time 4/4
      \key c \major  
      \clef bass
      \voiceThree

      e4 g a a        | b4.( g8) g2  | f4 c'8 b a4 b8 c | c2 b      | 
      g8 f g4 a a     | b4.( g8) g2  | f4 c' a8 d f e   | d2. r8 d8 |
      c4 c8 c g4 g8 g | c2 c4. c8    | d4 c8 b a4 a8 a  | d2 d4. d8 | 
      e4 d8 c b4 b8 b | e2 e         | f4 f f4. f8      | e1  \bar "|."       
    }

Bass =
   \new Voice = "bass"
    \relative c {
      \voiceFour

      c4 c a a            | g2 c       | f4 f f f8 f       | c2 d      | 
      e8 d c4 a a         | g2 c       | f4 f8 e d4 d8 d   | g2. r8 g  |
      c,4 c8 c c4 d8 e    | f2 f4. es8 | d4 d8 d d4 e8 fis | g2 g4. f8 | 
      e4 e8 e e4 fis8 gis | a2 g       | f4 f g4. g8       | c,1 \bar "|."       
    }

Text =
  \new Lyrics \lyricsto "sopran" \lyricmode {
   Hei -- lig, hei -- lig, hei -- lig ist der Herr Ze -- ba -- oth!
   Hei -- lig, hei -- lig, hei -- lig ist der Herr Ze -- ba -- oth!
   Die Län -- der sind voll sei -- ner Eh -- re,
   Die Län -- der sind voll sei -- ner Eh -- re,
   Die Län -- der sind voll sei -- ner Eh -- re!
   Hei -- lig ist der Herr!
  }


%% Die Layoutdefinition für das Gesamtwerk
\score {
<<
   \Akkorde
   \new Staff <<
	\Sopran
	\Alt
   >>
   \Text
   \new Staff <<
	\Tenor
	\Bass
   >>
>>

}
%% Die Layoutdefinition für das Gesamtwerk
\score {
<<
   \Akkorde
   \new Staff <<
	\Sopran
	\Alt
   >>
   \Text
   \new Staff <<
	\Tenor
	\Bass
   >>
>>
\midi { \tempo 4 = 80 }
}
