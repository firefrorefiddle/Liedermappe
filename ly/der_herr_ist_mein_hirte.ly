
\version "2.16.2"
% automatically converted by musicxml2ly from derHerrIstMeinHirte.xml

\header {
    title = "Der Herr ist mein Hirte"
    }

\paper {
  #(set-paper-size "a4")
  margin=3.5\in
}

\layout {
  indent = #0
}


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
  Au -- en. Er führt mich zu stil -- len Was __ _ -- sern, _ er er -- quickt mei -- ne See -- le.
  \repeat unfold 2 { \skip 1}
}

VTwo = \lyricmode {
  Auch wenn __ ich wan -- d're im To -- des -- tal, ich fürch -- te doch __ _ kein Un -- heil.
  Denn du __ _ bist bei_mir, dein Stecken und Stab, sie  _ _ _ _ _ _ _
  trö -- sten mich, ja sie sind_mein Trost.
}

VThree = \lyricmode {
  Du deckst __ mir reich -- lich und voll den Tisch vor_dem An -- ge -- sicht mei -- ner Fein -- de.
  Du hast __ _ mein Haupt mit Öl ge -- salbt _  _ _ _ _ _ _ _
  und __ mein Be -- cher fließt ü -- ber.
}

Sopran = 
  \new Voice = "sopran"
   \relative {
    \clef "treble" 
    \key g \major 
    \time 3/4
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
    b2 \parenthesize b'4 | %13 

%  }
%    \alternative { {
    \set Score.repeatCommands = #'((volta "1."))
    b8 b8 b4 a | % 14
    b4 a4 a4 | % 15 
%  } {
    \bar "||"
    \set Score.repeatCommands = #'((volta "2.-3."))
    b4( a4) g4 | % 16
    fis4 e4 d4 | % 17
    fis4.( g8 fis4)  | % 18
    e2 r4 |
    \bar "||"
    \set Score.repeatCommands = #'((volta #f))
%  } }
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
    b2 b,4 | % 24
    e2 fis4 | % 25
    g4 fis4 e4 | % 27
    d4 d4 e4 | % 28
    fis2 fis4 | % 29
    g4 fis4 e4 | % 30
    fis4 e4 d4 | % 31
    fis4.( g8 fis4) | % 
    e2. \bar "|."
    }


% The score definition
\score {
  <<   
    \chords {
       \set chordNameLowercaseMinor = ##t
       \germanChords
       e4:m e2.:m d c e:m
       e:m d b:7 e:m e:m d c e:m
       e:m a
%       c d c d c e:m b:7 e
       e:m d b:7 e:m
       e:m e:m d d c c d b:7
       e:m e:m d d c d b:7 e:m
     }
    \new Staff {
      \Sopran
      \Refrain
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
  \layout {}
				% To create MIDI output, uncomment the following line:
}

% The score definition for midi
\score {
  \unfoldRepeats {
    <<
      \new Staff <<
	\Sopran 
      >>    
    >>
  }
  \midi { \tempo 4 = 120 }

}

