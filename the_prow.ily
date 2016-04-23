\header {
  title = "The Prow"
}

\paper {
  page-breaking = #ly:page-turn-breaking
}


verse = {
    \repeat volta 2 {
        \repeat unfold 2 {
            d4. d4 d8 d8 d8 |
            f4. f4 f8 f8 f8 |
            g4. g4 g8 g8 g8 |
            a8( bes4) bes4 bes8 d8 a8 |
        }
    }
}

chorus = {    
    \repeat volta 2 {
        g4. g4 g8 g8 g8 \glissando |
        es4. es4 es8 es8 f8 |
        g4. g4 g8 g8 g8 \glissando |
        d4. d4 d8 es8 f8 |
        g4. g4 g8 g8 g8 \glissando |
        es4. es4 es8 es8 f8 |
    }
    \alternative {
        {
            g4. g4 g8 g8 g8 \glissando |
            d4. d4 d8 es8 f8 |
        }
        {
            g4. g4 g8 g8 g8 |
        }
    }
}

middle = {    
    \relative b, {
        \repeat volta 2 {
            b2 b4 b4 | b4 b4 g4. b8~ |
            b2 b4 b4 | b4 b4 g4. b8~ |
            b2 b4 b4 | b4 b4 g4. b8~ |
            b2 b4 b4 | b4 b4 g4. e8~ |
            e2 e4 e4 | e4 e4 b'4. e,8~ |
            e2 e4 e4 | e4 e4 g4. b8~
        }
        b2 b4 b4 | b4 b4 g4. b8~ |
        b2 b4 b4 | b4 b4 g4. b8~ |
        b2 b4 b4 | b4 b4 g4. b8~ |
        b2 b4 b4 | b4 b4 g4. b8~ |
    }
}


melody = \relative d {
    \tempo 4 = 200
    \time 4/4
    \clef bass

    r1 |

    \mark "A"
    \verse
    
    \mark "B" 
    \chorus

    \mark "A"
    \verse
    
    \mark "B"
    \chorus

    \mark "C"
    \middle

    \mark "A (solo)"
    \verse
    
    \mark "B (verse + solo)"
    \repeat volta 2 {
        \repeat unfold 2 {
            g4. g4 g8 g8 g8 \glissando |
            es4. es4 es8 es8 f8 |
            g4. g4 g8 g8 g8 \glissando |
            d4. d4 d8 es8 f8 |
            g4. g4 g8 g8 g8 \glissando |
            es4. es4 es8 es8 f8 |
            g4. g4 g8 g8 g8 \glissando |
            d4. d4 d8 es8 f8 |
        }
    }

    \mark "Outro"
    \repeat volta 2 {
        g4. es4. g4 | es4. g4. es4 | g4. es4. g4 | d'8 d8 d8-"Repeat and fade" d8 d8 d8 d8 r8
    }
}


\score {
    \new Staff \melody
    \layout { }
}

\score {
    \unfoldRepeats \melody
    \midi { }
}
