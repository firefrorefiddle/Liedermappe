\header{
	title = "Noch haben wir sie nicht geseh´n"
}
\version "2.16.2"

\paper {
  #(set-paper-size "a4")
  margin=1.5\in
    fonts = #
    (make-pango-font-tree
     "Source Sans Pro Semibold"
     "MS Shell Dlg 2"
     "8514oem"
     (/ (* staff-height pt) 2.5))
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
 \time 4/4
\germanChords

    f4
    f1 a1:min bes1 c1
    f1 d1:min g1:min c1
    f1 a1:min bes1 c1
    f1 d1:min g1:min g1:min
    c1 c1:7 f2 bes2 f1
    
  
  }
  
   \new Staff <<
   \new Voice = "sopran"
    \relative c' {
      \time 4/4
      \key f \major 
      \voiceOne
      
      \partial 4 c'4
      c4 c4 c4. c8
      c4 c8 c4. c4
      c4 bes4 a4 bes8 c8( c2.) bes4
      a4 a4 a4. a8
      a4 a8 a4. c4
      bes4 a4 g4 f4
      g2. b8\rest c8
      c4 c4 c4. c8
      c4 c8 c4. c4 
      c4 bes4 a4 bes8 c8( c2 c4) bes4
      a4 a8 a4. a4
      a4 a8 a4. bes4
      a4 a4 g4 f8 g8( g2.) g4
      g4 g4 g8 f4.
      g2 a2
      g4 f4 f8 f4.
      f2.
        
      \bar "|."    
      
      
    }
    
   \new Lyrics \lyricsto "sopran" {  
     
     \set stanza = "1."
     
     Noch ha -- ben wir sie nicht ge -- sehn, 
     noch war -- ten wir da -- rauf.___ 
     Noch neh -- men wir für un -- re Hoff -- nung 
     Spott und Hohn in Kauf
     und wis -- sen doch: es kommt ein Tag,
     da hört das War -- ten auf, _________
     denn g´rade dann wenn je -- der -- mann
     es nicht für mö -- glich hält,
     dann wer -- den wir sie se -- hen,
     Got -- tes neu -- e Welt.

  }
  
\new Lyrics \lyricsto "sopran" {
  
  \set stanza = "2."
  
  Dort wird es sein, wo kei -- ner mehr
  den an -- de -- ren ver -- gisst,
  wo nicht mehr auf ver -- brann -- tes Land
  das Blut von Kin -- dern fließt,
  wo kei -- ner mehr nach Frie -- den schreit,
  weil end -- lich Frie -- de ist,
  weil nicht mehr un -- ser Wil -- le,
  son -- dern Got -- tes Lie -- be zählt,
  in sei -- ner Ge -- gen -- wart,
  in Got -- tes neu -- er Welt.
    
  }
  
\new Lyrics \lyricsto "sopran" {
  
  \set stanza = "3."
   
   Dann ken -- nen wir das Wann, War -- rum, 
   Wie -- lange und Wo -- her,
   dann quä -- len tau - send un -- ge -- lös -- te
   Fra -- gen uns nicht mehr;
   denn uns -- re letz -- te Ant -- wort ist uns
   Chris -- tus, un -- ser Herr,
   der uns und uns -- re Dun -- kel -- heit
   mit sei -- nem Licht er - hellt,
   der un -- sre Son -- ne ist in 
   Got -- tes neu -- er Welt.
   
  }

\new Lyrics \lyricsto "sopran" {
  
  \set stanza = "4."
  
  Noch war -- ten wir da -- rauf,
  noch ha -- ben wir sie nicht ge - sehn.
  noch ha -- ben wir in die -- ser Welt
  ein Le -- ben zu be -- stehn.
  Schon heu -- te soll in un -- srem Le -- ben
  Got -- tes Wort ge -- schehn,
  denn so na -- he sich ein je -- der hier an 
  Got -- tes Wor -- te hält,
  ge - nau so na -- he ist er
  Got -- ts neu -- er Welt.
  
  }


  
   
   >>
  
 
   
   
   
 
    
   >>
   
  }
				
  

   
   
   
   
  


