% Diese Datei kann mit GNU Lilypond (www.lilypond.org) in ein PDF-Notenblatt uebersetzt werden.

\header{
	title = "Heilig, heilig, heilig"
}
\version "2.16.2"

\paper {
  #(set-paper-size "a4")
  margin=1.5\in
}

\layout {
  indent = #0
}

%% << indiziert, dass alles bis >> parallel verarbeitet wird.
\new Staff
<<

				% Die Akkorde kommen als erstes, weil sie ganz oben stehen 
				% sollen. Hier geben wir den Akkord und die Notenlaenge an, 
				% also a1 ist eine ganze Note in A Dur (in unserem Fall 
				% entspricht das zwei Takten), d4 ist ein halber Takt in 
				% D Dur.
  \chords {
\set chordNameLowercaseMinor = ##t
\germanChords
    c2 c2/b a:m a:m/g:maj f1 g2:sus4 g
    c2 c2/b a:m a:m/g:maj f1 g 
    c2 c2:7 f1 d2 d2:7 g1
    e2 e2:7 a:m a:m/g
    f2 g2 c1    
  }
				% Die Melodie in Ton und Notenlaenge. "'" verschiebt eine 
				% Note um eine Oktave nach oben, "," nach unten. Ansonsten 
				% wird immer diejenige Oktave gesetzt, wo die Note am naechsten 
		          	% zur vorhergehenden liegt.
   \new Voice = "sopran"
    \relative c' {
      \time 4/4
      \key c \major  
      \voiceOne

      c4 e e8( f) g4    | g4.^( f8) e2  | a4 a c b8 a8      | g1        | 
      c,4 e e8^( f) g4   | g4.^( f8) e2  | a4 a c4 c8 c      | b2. r8 g8 |
      g4 g8 g e4 f8 g   | a2 a4. a8    | a4 a8 a fis4 g8 a | b2 b4. b8 | 
      b4 b8 b gis4 a8 b | c2 c         | c4 c d4. c8       | c1  \bar "|."       
    }
   \new Voice = "alt"
     \relative {
     \voiceTwo
      g4 c c8( d) e4   | d2 c2         | c4 f f g8 f8          | e2( f)    | 
      c4 c c8( d) e4    | d2 c2        | c4 a'8( g) f4 a8 a    | g2. r8 f  |
      e4 e8 e8 c4 c8 c  | f2 f4. f8    | fis4 fis8 fis d4 d8 d | g2 g4. g8 | 
      gis4 gis8 gis e4 e8 e | a2 a     | a4 a b4. f8           | g1  \bar "|."       
    }
  \addlyrics {
   Hei -- lig, hei -- lig, hei -- lig ist der Herr Ze -- ba -- oth!
   Hei -- lig, hei -- lig, hei -- lig ist der Herr Ze -- ba -- oth!
   Die Län -- der sind voll sei -- ner Eh -- re,
   Die Län -- der sind voll sei -- ner Eh -- re,
   Die Län -- der sind voll sei -- ner Eh -- re!
   Hei -- lig ist der Herr!
  }

>>
