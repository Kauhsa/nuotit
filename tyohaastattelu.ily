\include "predefined-guitar-fretboards.ly"

\header {
  title = "Työhaastattelu"
}

melody = \chordmode {
  \set chordChanges = ##t
  a1  | a | a | bes2 cis2:dim |
  a1 | a | bes1 | bes2 f2:aug |
  d1:m | d:m | d2:m e2:dim | f2:aug g2:m |
  bes1 | bes1 | a1 | a |
  d1:m | e1:dim | f2:aug cis2:dim | cis2:dim bes4 cis4:dim |
  cis4:dim d2.:m | e1:dim | f2:aug cis2:dim | cis2:dim bes4 cis4:dim |
  a2 f2:aug | d1:m | d:m | d:m |
  d2:m g2:m | a1 | a | a
}

<<
  \new ChordNames {
    \melody
  }
  %\new FretBoards {
  %  \melody
  %}
  \new Voice \with {
    \consists "Pitch_squash_engraver"
  } {
    \relative c'' {

      \improvisationOn
      \set Score.markFormatter = #format-mark-box-alphabet
      \key d \minor
      \repeat volta 2 {
        \mark \default
        c4 c4 c4 c4 |
        c4 c4 c4 c4 |
        c4 c4 c4 c4 |
        c4 c4 c4 c4 | \break
        c4 c4 c4 c4 |
        c4 c4 c4 c4 |
        c4 c4 c4 c4 |
        c4 c4 c4 c4 | \break
        c4 c4 c4 c4 |
        c4 c4 c4 c4 |
        c4 c4 c4 c4 |
        c4 c4 c4 c4 | \break
      }

      c4 c4 c4 c4 |
      c4 c4 c4 c4 |
      c4 c4 c4 c4 |
      c4 c4 c4 c4 | \break

      \repeat volta 2 {
        \mark \default
        c4 c4 c4 c4 |
        c4 c4 c4 c4 |
        c4 c4 c4 c4 |
        c4 c4 c4 c4 | \break
        c4 c4 c4 c4 |
        c4 c4 c4 c4 |
        c4 c4 c4 c4 |
        c4 c4 c4 c4 | \break
        c4 c4 c4 c4 |
        c4 c4 c4 c4 |
        c4 c4 c4 c4 |
        c4 c4 c4 c4 | \break
        c4 c4 c4 c4 |
        c4 c4 c4 c4 |
        c4 c4 c4 c4 |
        c4 c4 c4 c4 |
      }
    }
  }

>>
