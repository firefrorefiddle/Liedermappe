


  
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





\markup { \fontsize #8 \bold 413 {
        
        \italic \fontsize #8 \bold {\hspace#1 Der Herr ist mein Hirte}
        
        
          }
}

  \markup { \hspace#10 T/M: Keith&Melody Green}
   \markup { \vspace #1 }

chExceptionMusic = {
  <c f g>1-\markup { \super "4" }
}


chExceptions = #( append
  ( sequential-music-to-chord-exceptions chExceptionMusic #t)
  ignatzekExceptions)

Ref = \lyricmode {
  Fol -- gen wer -- den mir Huld und Gü -- te all mein gan -- zes Le -- ben lang
  und woh -- nen werd' ich im Hau -- se des Herrn für im -- mer und e -- wig -- lich
  A -- men.
}

%\VOne = \lyricsmode {
%  Der Herr ist mein Hir -- te, nichts man -- gelt mir. Er la -- gert mich auf grü -- nen
%  Au -- en. Er führt mich zu stil -- len Was -- sern, er er -- quickt mei -- ne See -- le.
%}

VOne = \lyricmode {
  Der Herr_ist mein Hir -- te, nichts man -- gelt mir. Er lagert mich auf grü -- nen
  Au -- en. Er führt mich zu stil -- len Was __ _ -- sern, er_er -- quickt mei -- ne See -- le.
  Er  führt mich auf rech -- ten Pfa -- den um sei -- nes Na -- mens wil -- len.
  \repeat unfold 2 { \skip 1}
}

VTwo = \lyricmode {
  Auch wenn __ ich wan -- d're im To -- des -- tal, ich fürch -- te doch __ _ kein Un -- heil.
  Denn du __ _ bist bei_mir, dein Stecken und Stab, sie  _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _  _ _ _
  trö -- sten mich, ja sie sind_mein Trost.
}

VThree = \lyricmode {
  Du deckst __ mir reich -- lich und voll den Tisch vor_dem An -- ge -- sicht mei -- ner Fein -- de.
  Du hast __ _ mein Haupt mit Öl ge -- salbt _   _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _  _ _ _
  und __ mein Be -- cher fließt ü __ -- ber.
}

VerseAll = {
    \partial 4 b4
%    \repeat volta 3 {
    | % 1
    \slurDashed
    e4 ( fis4) g4 | % 2
    \slurSolid
    fis4 e4 d4 | % 3
    e2 d4 | % 4
    b2 b'4 | % 5
    \slurDashed
    b4( a4) g4 | % 6
    \slurSolid
    fis4 e4 d4 | % 7
    fis4.( g8 fis4)  | % 8
    e2 b4 | % 9
    e4 fis4 g4 | % 10
    fis4( e4) d4 | % 11
    e4~e d4 | % 12
    \slurDashed
    b2 b'8( b) | %13 
    \slurSolid
}

VerseFirst = {
    b4 a b | % 14
    a4 a2( |  % 15 
    a4) r4 a4 |
    g2 g4 |
    fis fis g |
    a2 g4 |
    fis4 e d |
    fis4.( g8) fis4 |
    e4 e2( |
    e4) r2
    \bar "||"
}

VerseOthers = {
    b'4( a4) g4 | % 16
    fis4 e4 d4 | % 17
    fis4.( g8 fis4)  | % 18
    e2 r4 |
    \bar "||"
}

Refrain = 
  \new Voice = "refrain"
   \relative {

    b'2 b4 | % 19
    b4 a4 g4 | % 20
    fis2 g4 | % 21
    a4( g4) fis4 | % 22
    e2 fis4 | % 23
    g4( fis4) e4 | % 22
    fis2 g4 | % 23
    a2 b,4 | % 24
    e2 fis4 | % 25
    g4 fis4 e4 | % 27
    d4 d4 e4 | % 28g
    fis2 fis4 | % 29
    g4 fis4 e4 | % 30
    fis4 e4 d4 | % 31
    fis4.( g8 fis4) | % 
    e2 \bar "|."
    }

Sopran = 
  \new Voice = "sopran"
   \relative {
    \clef "treble" 
    \key g \major 
    \time 3/4
       
    % so kommt's aufs blatt, mit benutzerdefinierten
    % wiederholungszeichen.
    \tag sheet {
      \VerseAll

      \set Score.repeatCommands = #'((volta "1."))
      \VerseFirst
  
      \set Score.repeatCommands = #'((volta "2.-3."))
      \VerseOthers
      
      \set Score.repeatCommands = #'((volta #f))
      \break % zeilenumbruch, damit für den refraintext nicht
             % noch eine zeile weiter unten platz gemacht wird
      \Refrain
    }
    
    % für richtigen midi output müssen wir die wiederholung
    % "auspacken", weil der obige hack nur auf dem papier richtig
    % aussieht, aber von lilypond semantisch nicht verstanden wird
    % zwei strophen reichen für midi.
    \tag midi {
      \VerseAll
      \VerseFirst
      \Refrain
      \VerseAll
      \VerseOthers
      \Refrain
    }
    
  }

Akkorde =
  \chords {
       \set chordNameLowercaseMinor = ##t
       \set chordChanges = ##t
       \germanChords
       
       \tag sheet {
         e4:m e2.:m d c e:m
         e:m d b:7 e:m e:m d c e:m     % ende gemeinsamer teil
         e:m e:m a c d c d b:7 e:m e:m % ende teil erste strophe
         e:m d b:7 e:m                 % ende teil zweite und dritte strophe
         e:m e:m d d c c d b:7
         e:m e:m d d c d b:7 e:m       % ende refrain
       }
       \tag midi {
         e4:m e2.:m d c e:m
         e:m d b:7 e:m e:m d c e:m     % ende gemeinsamer teil
         e:m e:m a c d c d b:7 e:m e:m % ende teil erste strophe
         e:m e:m d d c c d b:7
         e:m e:m d d c d b:7 e:m       % ende refrain
         e2.:m d c e:m
         e:m d b:7 e:m e:m d c e:m     % ende gemeinsamer teil
         e:m d b:7 e:m                 % ende teil zweite und dritte strophe
         e:m e:m d d c c d b:7
         e:m e:m d d c d b:7 e:m       % ende refrain
       }
     }
     
AkkordeB =
  \chords {
       \set chordNameLowercaseMinor = ##t
       \set chordChanges = ##t
       \germanChords
       
       \tag sheet {
         e4:m e2.:m d c e:m
         e:m d c e:m e:m d c e:m       % ende gemeinsamer teil
         e:m e:m a c d c d c e:m e:m   % ende teil erste strophe
         e:m d c e:m                   % ende teil zweite und dritte strophe
         e:m e:m d d c c d d:sus4
         e:m e:m d d c d c e:m         % ende refrain
       }
       \tag midi {
         e4:m e2.:m d c e:m
         e:m d c e:m e:m d c e:m       % ende gemeinsamer teil
         e:m e:m a c d c d c e:m e:m   % ende teil erste strophe
         e:m e:m d d c c d b:7
         e:m e:m d d c d b:7 e:m       % ende refrain
         e2.:m d c e:m
         e:m d c e:m e:m d c e:m       % ende gemeinsamer teil
         e:m d c e:m                   % ende teil zweite und dritte strophe
         e:m e:m d d c c d d:sus4
         e:m e:m d d c d c e:m         % ende refrain
       }
     }     

\layout {
  \context {
    \Score
    \remove "Bar_number_engraver"
  }
}
% The score definition
\score {
  <<   
    \keepWithTag sheet \Akkorde
    \new Staff {
      \keepWithTag sheet \Sopran
    }
    \new Lyrics \lyricsto "sopran" {
      <<
	\new Lyrics {
	  \set stanza = #"1. "
	  \set associatedVoice = "sopran"
	  \VOne
	}
	\new Lyrics {
	  \set stanza = #"2. "
	  \set associatedVoice = "sopran"
	  \VTwo
	}
	\new Lyrics {
	  \set stanza = #"3. "
	  \set associatedVoice = "sopran"
	  \VThree
	}
      >>
    }
    \new Lyrics {
      \lyricsto "refrain"
      \Ref
    }
  >>
				% To create MIDI output, uncomment the following line:
}

% The score definition for midi
\score {
  \unfoldRepeats {
    <<
      \keepWithTag midi \Akkorde
      \new Staff <<
	\keepWithTag midi \Sopran 
      >>    
    >>
  }
  \midi { \tempo 4 = 120 }

}

   \markup { \vspace #8 }


    \markup \abs-fontsize #10 {1982 by Universal Music - MGB Songs, Birdwing Music and Ears To Hear Music} 

   \markup { ___________________________________________________________________________________________________}

   
   