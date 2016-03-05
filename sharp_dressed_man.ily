\header {
  title = "Sharp Dressed Man"
  subtitle = "ZZ Top"
}

intro = {
    \time 4/4
    \clef bass


    \repeat percent 4 { 
        c8 c8 c8 c8 c8 c8 c8 c8 |
        c8 c8 c8 c8 r2 |
    }
}

verse = {
    \time 4/4
    \clef bass
    \relative c {

        \repeat percent 6 {
            c8 c8 c8 c8 c8 c8 c8 c8 |
        }
        ais8 ais8 ais8 ais8 ais8 ais8 ais8 c8 |
        f,8 f8 f8 f8 f8 f8 f8 g8 |

        c8 c8 c8 c8 c8 c8 c8 c8 |
        c8 c8 c8 c8 c8 c8 c8 c8 |
        ais8 ais8 ais8 ais8 ais8 ais8 ais8 c8 |
        f,8 f8 f8 f8 f8 f8 f8 f8 |
        g8 g8 g8 g8 g8 g8 g8 g8 |
        g8 g8 g8 g8 g8 g8 g8 g8 |
        c8 r8 r4 r2 |
        r2 r8 a8 ais8 b8 |
        
    }    
}

firstsolo = {
    \time 4/4
    \clef bass
    \relative c {


        \set countPercentRepeats = ##t
        \repeat percent 19 {
            c8 c8 c8 c8 c8 c8 c8 c8 |
        }
        
        c8 ais8 r4 g4. e8 |
        
        \repeat volta 2 {
            f8 f8 f8 f8 f8 f8 f8 f8 |
            f8 f8 f8 f8 f8 f8 f8 f8 |
            c'8 c8 c8 c8 c8 c8 c8 c8 |
            c8 c8 c8 c8 c8 c8 c8 c8 |
        }

        c8 ais8 r4 g2 |
        r1 |
        r1 |
    }    
}

secondsolo = {
    \time 4/4
    \clef bass
    \relative c {
        
        \set countPercentRepeats = ##t
        \repeat percent 20 {
            c8 c8 c8 c8 c8 c8 c8 c8 |
        }


        \unset countPercentRepeats
        \repeat volta 2 {
            \repeat percent 4 {
                f,8 f8 f8 f8 f8 f8 f8 f8 |    
            }
            
            \repeat percent 4 {
                c'8 c8 c8 c8 c8 c8 c8 c8 |    
            }
        }


        \once \override Score.RehearsalMark.self-alignment-X = #RIGHT
        \mark \markup { \small "Repeat and fade out "}
    }    
}

\score {
    \new Staff \intro
    \header { piece = "Intro" }
}

\score {
    \new Staff \verse
    \header { piece = "Verse (twice first time)" }
}

\score {
    \new Staff \firstsolo
    \header { piece = "First solo" }
}
\markup {
    \column {
      \line { Repeat intro and verse (verse only once) }
      \line { " " }
    }
}

\score {
    \new Staff \secondsolo
    \header { piece = "Second solo and outro" }
}