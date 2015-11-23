% Diese Datei kann mit GNU Lilypond (www.lilypond.org) in ein PDF-Notenblatt uebersetzt werden.

\header{
	title = "Az a szep"
}
\version "2.16.2"

\paper {
  #(set-paper-size "a5")
  margin=1.5\in
}

\layout {
  indent = #0
}

%% << indiziert, dass alles bis >> parallel verarbeitet wird.
<<

				% Die Akkorde kommen als erstes, weil sie ganz oben stehen 
				% sollen. Hier geben wir den Akkord und die Notenlaenge an, 
				% also a1 ist eine ganze Note in A Dur (in unserem Fall 
				% entspricht das zwei Takten), d4 ist ein halber Takt in 
				% D Dur.
  \chords {
    a1 d2 a2 d2 e2 a1 a1 d1 e1 a1 a1 d2 a2 d2 e2 a1 a1 d1 e1 a1 a1 d2 a2 d2 e2 a2
  }
  
				% Die Melodie in Ton und Notenlaenge. "'" verschiebt eine 
				% Note um eine Oktave nach oben, "," nach unten. Ansonsten 
				% wird immer diejenige Oktave gesetzt, wo die Note am naechsten 
				% zur vorhergehenden liegt.
  \relative e' {
    \repeat volta 2 {
      \time 2/4
      \key a \major
      e8 cis8 e4 | e8 cis8 e4 | fis8 gis8 a8 fis8 | e8 cis8 e4 | fis4. d8 | b8 e4. | a,8 a4. | a4 r4
    }
    cis'8 cis8 b8 b8 | a8 a8 gis8 gis8 | b2 | fis2 | 
    b8 b8 a8 a8 | gis8 gis8 fis8 fis8 | a2 | e2 |
    \bar "||"  
    
    e8 cis8 e4 | e8 cis8 e4 | fis8 gis8 a8 fis8 | e8 cis8 e4 | fis4. d8 | b8 e4. | a,8 a8 a8 a8 | a8 r4.
    \bar "||"
    
				%<a b> setzt beide Noten, a und b, parallel.
    <cis' a>8 <cis a>8 <b gis>8 <b gis>8 | <a fis>8 <a fis>8 <e gis>8 <e gis>8 | <b' gis>2 | <d, fis>2 | 
    <b' gis>8 <b gis>8 <a fis>8 <a fis>8 | <gis e>8 <gis e>8 <fis d>8 <fis d>8 | <a fis>2 | <e cis>2 |
    e8 cis8 e4 | e8 cis8 e4 | fis8 gis8 a8 fis8 | e8 cis8 e4 | fis4. d8 | b8 e4. | a,8 a4. | a4 r4
    \bar "|."
  }

				% Pro Strophe setzen wir eine lyrics-Einheit. 
  \addlyrics {
    \set stanza = #"1. " 
    Az a szép | az a szép | a -- ki -- nek a | sze -- me  kék | a -- ki -- | nek a | szem -- e | kék. |
    Lám az e -- nyém | lám az e -- nyém | sötét | kék, |
    még sem va -- gyok | a ba -- bám -- nak | elég | szép. |
    Az a szép | az a szép | a -- ki -- nek a | sze -- me  kék | a -- ki | nek a | sze -- me fe -- ke -- | te. 
  }
  \addlyrics {
    \set stanza = #"2. " 
    Oh wie süß, | oh wie süß, | fühln sich wie im | Pa -- ra -- dies, | A -- lex und A -- liz. _ _ |
    Wer -- den -- nun ver -- | eint durchs Le -- ben | lau -- | fen | und beim Schwim -- men | und beim Ra -- deln | schnau -- | fen.
    Oh wie süß, | oh wie süß, | fühln sich wie im | Pa -- ra -- dies, | A -- lex und A -- liz. _ _ _ |
  }
  \addlyrics {
    \set stanza = #"3. " 
    Tri -- ath -- lon, | Tri -- ath -- lon, | sin -- gen euch ein | Lied da -- von, | E -- he | Tri -- ath -- | lon. _ _ |
    Er -- stens kommt dem | an -- dern Freu -- de | ma -- chen, | zwei -- tens sollt ihr | oft ge -- mein -- sam | La -- | chen! |
    Tri -- ath -- lon, | Tri -- ath -- lon, | dri -- tens kommt, ihr | wisst es schon, | Ko -- mu -- | ni -- ka -- | tion. _ _ _ |
  }
  \addlyrics {
    \set stanza = #"4. " 
    Tol -- les Paar, | tol -- les Paar, | ihr ver -- steht euch | wun -- der -- bar, | tol -- les | E -- he -- paar. _ _ |
    Ihr liebt Je -- sus | und er wird euch | seg -- | nen, | könnt mit Lie -- be | an -- de -- ren be -- | ge -- | gnen. |
    Tol -- les Paar, | tol -- les Paar, | ihr ver -- steht euch | wun -- der -- bar, | tol -- les | E -- he -- paar. _ _ _ |
  }

>>
