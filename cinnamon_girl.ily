\version "2.18.2"

\header {
  title = "Cinnamon Girl"
  subtitle = "Neil Young"
}

melody = \relative c {
    \time 4/4
    \clef bass
    \override Score.RehearsalMark.self-alignment-X = #LEFT
    
    
    \repeat volta 2 {
        \mark \markup { \small Intro }
        d8 d8 c8 d8 r8 c8 d8 r8 |
        c8 b8 a8 f8~ f8 g8 r4 |
        d'8 d8 c8 d8 r8 c8 d8 r8 |
        c8 b8 a8 f8~ f8 r8 r4 
    }

    \mark \markup { \small "First verse" }
    d'4. d8 a8 a4 d8 |
    a8 a4 e'8 a8 a4 e8 |
    c'4. g8 c8 c4 g8 |
    g,4. a8 g'8 g4 a,8 |
    f8 g8 a8 c8 d8 r8 d8 r8 |
    c8 a8 c8 a8~ a4 r8 c8 |

    d8 d4 c8 a8 a4 d8 |
    a8 a4 e'8 a8 a4 e8 |
    c'8 c4 g8 c8 c4 g8 |
    g,8 g4 a8 e'8 e4 a,8 |
    f8 g8 a8 c8 d8 r8 d8 r8 |
    c8 a8 c8 a8~ a4 r8 c8 |

    \repeat volta 2 {
        \mark \markup { \small "Intro again" }
        d8 d8 c8 d8 r8 c8 d8 r8 |
        c8 b8 a8 f8~ f8 g8 r4 |
        d'8 d8 c8 d8 r8 c8 d8 r8 |
        c8 b8 a8 f8~ f8 r8 r4 
    }

    \mark \markup { \small "Second verse" }
    d'8 d4 d8 a8 a4 d8 |
    a8 a4 e'8 a8 a4 e8 |
    c'8 c4 g8 c8 c4 g8 |
    g,8 g4 a8 g'8 g4 a,8 |
    f8 g8 a8 c8 d8 r8 d8 r8 |
    c8 a8 c8 a8~ a4 r8 c8 |

    d8 d4 c8 a8 a4 d8 |
    a8 a4 e'8 a8 a4 e8 |
    c'8 c4 g8 c8 c4 g8 |
    g,8 g4 a8 e'8 e4 a,8 |
    f8 g8 a8 c8 d8 r8 d8 r8 |
    c8 a8 c8 a8~ a4 r8 c8 |

    \repeat volta 2 {
        \mark \markup { \small "Intro yet again" }
        d8 d8 c8 d8 r8 c8 d8 r8 |
        c8 b8 a8 f8~ f8 g8 r4 |
        d'8 d8 c8 d8 r8 c8 d8 r8 |
        c8 b8 a8 f8~ f8 r8 r4 
    }

    \mark \markup { \small "Bridge" }
    c'8 c4 a8 a8 a8 a8 c8 |
    c4. a8 a8 a8 \deadNote e8 c'8 |
    c4. a8 a8 a8 c8 d8 |
    g4. g8 g8  d8 d8 f8 |
    g8 g4 f8 f8 d8 d8 d8 |
    a8 a4 e'8 e8 e4 g8 |
    a8 a4 g8~ g8 e8 g8 e8

    \mark \markup { \small "Instrumental" }
    d8 d4 a8 a8 a4 d8 |
    a8 a4 e'8 a8 a4 e8 |
    c8 c4 g'8 c8 c4 g8 |
    g8 g4 d8 g8 g4 d8 |
    f,8 g8 a8 c8 d8 r8 d8 r8 |
    c8 a8 c8 a8~ a4 r8 c8 |

    d8 d4 c8 a8 a4 d8 |
    a8 a4 e'8 a8 a4 e8\glissando |
    c8 c4 g'8 c8 c4 g8 |
    g,8 g4 a8 e'8 e4 a,8 |
    f8 g8 a8 c8 d8 r8 d8 r8 |
    c8 a8 c8 a8~ a4 r8 c8 |
    d8 d8 c8 d8~ d8 r8 r4

}

\score {
    \new Staff \melody
}