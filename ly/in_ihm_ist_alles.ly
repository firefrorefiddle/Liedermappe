\header{
	title = "In Ihm ist alles, was ich brauch'"
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

\score {
  
  <<
    
    \chords {
\set chordNameLowercaseMinor = ##t
\set chordChanges = ##t
\germanChords

    a1 d1 a a
    a d e e
    a d e a
    d a b2:m e2 a1
  
  }
  
   \new Staff <<
   \new Voice = "sopran"
    \relative c' {
      \time 4/4
      \key a \major  
      \voiceOne

e4 e2 e4 |
fis fis2 e8 d |
e1( |
e2.) a4\rest | % z1 
\break
e4 e2 e4 | 
fis fis2 gis8 a |
gis2( gis8)( fis8 gis fis |
e2.) a4\rest | % z2
\break
a2. gis4 | 
gis fis2 fis4 | 
gis2. fis4 |
fis4 e2. |
   \slurDashed
fis2 gis4( a) |
a( e2) a4 | % z3
   \slurSolid
b4 b a8 gis4. |
a2. a4\rest | % z4
\bar "|."    
    }
    
   \new Lyrics \lyricsto "sopran" {  
     
     \set stanza = "1."

    In Ihm ist al -- les, was ich brauch.
    In Ihm ist al -- les, was ich brauch.
    Sei -- ne Fül -- le für mei -- ne Lee -- re und Sein Leben für
    mei -- nen ew' -- gen Tod.

  }
  
\new Lyrics \lyricsto "sopran" {
  
  \set stanza = "2."
  
    In Ihm ist al -- les, was ich brauch.
    In Ihm ist al -- les, was ich brauch.

    Sei -- ne Lie -- be für mei -- ne Käl -- te
    und Sein Licht__ für mei -- ne Fin -- ster -- nis.
   
  }
  
\new Lyrics \lyricsto "sopran" {
  
  \set stanza = "3."

    In Ihm ist al -- les, was ich brauch.
    In Ihm ist al -- les, was ich brauch.

    Sei -- ne Wahr -- heit für mei -- ne Lü -- ge
    und Seine Freude für mei -- ne Trau -- rig -- keit.

  }

\new Lyrics \lyricsto "sopran" {
  
  \set stanza = "4."

    In Ihm ist al -- les, was ich brauch.
    In Ihm ist al -- les, was ich brauch.

    Sei -- ne Sie -- ge für mein Ver -- sa -- gen
    und Seine Ruhe für mei -- ne Re -- bel -- lion.

  }

  
    \new Voice = "alt"
    \relative c' {
      \voiceTwo
      
      cis4 cis2 cis4 |
      d4 d2 cis8 b8 |
      cis1( | 
      cis2.) s4 | % z1
      cis4 cis2 cis4 |
      d4 d2 d8 d |
      d2( d)( |
      d2.) s4 | % z2
      e2. e4 |
      e4 d2 d4 |
      d2. d4 |
      d4 cis2. |
      d2 e |
      e4 e2 e4 | % z3
      d4 fis e8 d4. |
      e2. s4 | % z4
      
      
      \bar "|."       
    }
   >>
  
  \new Staff <<
   \new Voice = "bass"
    \relative c {
      \time 4/4
      \key a \major 
      \clef bass
      \voiceFour
      
      a4 a2 a4
      d4 d2 d8 d8
      a1( a2.) s4
      a4 a2 a4
      d4 d2 b8 b8
      e2( e2 e2.) s4
      cis2. cis4 d4 d2 d4
      e2. e4
      a,4 a2.
      d2 d2
      cis4 cis2 cis4
      b4 b4 e8 e4.
      a,2. s4

      
         
    }
    
    \new Voice = "tenor"
    \relative c {
      \voiceThree
      
      e4 e2 a4 |
      a a2 a8 a |
      a1( |
      a2.) r4 | % z1
      e4 e2 a4 |
      a4 a2 a8 a |
      b2( b8)( a b a |
      gis2.) e4\rest | % z2
      a2. a4
      a4 a2 a4
      gis2. b4
      a4 a2.
      a2 b2
      cis4 a2 a4
      a4 d4 cis8 b4.
      cis2. e,4\rest

      
      \bar "|."       
    }
  >>
 
   >>
  }
				
  

   
   
   
   
  


