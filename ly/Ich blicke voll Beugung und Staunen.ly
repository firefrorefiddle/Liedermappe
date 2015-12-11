\header{
	title = "Ich blicke voll Beugung und Staunen"
}
\version "2.16.2"

\paper {
  #(set-paper-size "a4")
  margin=1.5\in
}


chExceptionMusic = {
  <c f g>1-\markup { \super "4" }
}

chExceptions = #( append
  ( sequential-music-to-chord-exceptions chExceptionMusic #t)
  ignatzekExceptions)
\layout {
  indent = #0
}


%% << indiziert, dass alles bis >> parallel verarbeitet wird.
\score {
<<

				% Die Akkorde kommen als erstes, weil sie ganz oben stehen 
				% sollen. Hier geben wir den Akkord und die Notenlaenge an, 
				% also a1 ist eine ganze Note in A Dur (in unserem Fall 
				% entspricht das zwei Takten), d4 ist ein halber Takt in 
				% D Dur.
  \chords {
\set chordNameLowercaseMinor = ##t
\set chordChanges = ##t
\set chordNameExceptions = #chExceptions
\germanChords
    \partial 4 a4 a1.
    e2. a2. d1. a2. e2.:7
    a1. e2. fis2.:m 
    d2 a4 b2:m e4 a1

    a4 a4:7 d1. a1 a4
    a4:7 d1. a1 a4
    e4 a2. e2. d1.
    a2. e2.:7 a1.
  }
				% Die Melodie in Ton und Notenlaenge. "'" verschiebt eine 
				% Note um eine Oktave nach oben, "," nach unten. Ansonsten 
				% wird immer diejenige Oktave gesetzt, wo die Note am naechsten 
		          	% zur vorhergehenden liegt.
   \new Staff <<
   \new Voice = "sopran"
    \relative c' {
      \time 6/4
      \key a \major  
      

      \partial 4 e4 
      e4 cis'4 b4 a4 gis4 a4     | cis2. b4 r4 gis4 |
      fis4 fis4 gis4 b4 a4 fis4  | e2. r2 \bar "" \break e4        |
      e4 cis'4 b4 a4 gis4 a4     | cis2. b4 r4 cis4 |
      fis,4. gis8 a4 a4. b8 gis4 | a2. r2 \bar "" \break a4        |
      
      a2 fis4 fis4 gis4 a4      | e2. r2 a4        |
      a2 fis4 fis4 gis4 a4      | e2. r2 \bar "" \break e4        |
      cis'4 d4 cis4 b4 a4 gis4  | fis2. r2 fis4    |
      e4. a8 a4 gis4 fis4 gis4 a2. r2
      
      \bar "|."       
    }
%   \new Voice = "alt"
%     \relative {
%     \voiceTwo
%      g4 c c8( d) e4   | d2 c2         | c4 f f g8 f8          | e2( f)    | 
%      c4 c c8( d) e4    | d2 c2        | c4 a'8( g) f4 a8 a    | g2. r8 f  |
%      e4 e8 e8 c4 c8 c  | f2 f4. f8    | fis4 fis8 fis d4 d8 d | g2 g4. g8 | 
%      gis4 gis8 gis e4 e8 e | a2 a     | a4 a b4. f8           | g1  \bar "|."       
%    }
   >>
  \new Lyrics \lyricsto "sopran" \lyricmode {
   Ich blic -- ke voll Beu -- gung und Stau -- nen
   hi -- nein in das Meer sei -- ner Gnad 
   Und lau -- sche der Bot -- schaft des Frie -- dens,
   die er mir ver -- kün -- di -- get hat.
   
   Am Kreuz trug er mei -- ne Schuld.
   Sein Blut macht hell mich und rein;
   mein Wil -- le ge -- hört mei -- nem Gott;
   ich trau -- e auf Je -- sus al -- lein.
   
  }
>>
}

