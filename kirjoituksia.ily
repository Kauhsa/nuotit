\version "2.18.2"

\header {
  title = "Kirjoituksia"
  subtitle = "Ultra Bra"
}

melody = \relative d, {
    \set Score.markFormatter = #format-mark-box-alphabet
    \time 4/4
    \clef bass
    \key d \minor

    r1 | r1 |

    \repeat volta 16 {
      d4 d4 r2 |
    }
    \alternative {
      { r1 }
      { r2 d'2\glissando }
    }

    \repeat volta 3 {
        d,4 d4 c'8 d8 d8 c8 |
    }
    \alternative {
      { d8 d8 c8 d8 d8 c4. | }
      { d8 d8 c8 d8 d8 d8 c4 | }
    }
    g2 a2 |
    d,4 d4 c'8 d8 d8 c8 |
    d8 d8 c8 d8 c8 d8 d8 d8 | \break

    % chorus 1
    \mark \default
    d8 r8 d4 f8 e8 d8 b8 |
    c8 r8 c4 d4 c8 b8 |
    g8 r8 g4 a8 r8 a4 |
    bes8 r8 bes4 a4 a8 c8 |  \break
    d4 d4 f8 e8 d8 b8 |
    c8 r8 c4 c8 c8 d8 e8 |
    f8 r8 f4 c4 d8 c8 |
    f2 bes8 a8 g8 f8 |  \break
    dis8 r8 dis4 bes'8 a8 g8 f8 |
    bes8 r8 c,8 d8 e8 f8 g8 a8 |
    g8 r8 g4 d8 f8 fis8 g8~ |
    g8 g8 g4 g8 f8 c8 cis8 | \break

    % chorus 2
    \mark \default
    d8 r8 d4 f8 e8 d8 b8 |
    c8 r8 c4 d8 c8 bes8 a8 |
    g8 r8 g4 a8 r8 a4 |
    bes8 r8 bes4 a4 a8 c8 | \break
    d4 d4 f8 e8 d8 b8 |
    c8 r8 c4 c8 c8 d8 e8 |
    f8 r8 f4 c4 d8 c8 |
    f2 bes8 a8 g8 f8 | \break
    dis8 r8 dis4 bes'8 a8 g8 f8 |
    bes8 r8 c,8 d8 e8 f8 g8 a8 |
    g8 r8 g4 d8 f8 fis8 g8~ |
    g8 g8 g8 g8 d8 f8 g8 c,8 | \break
    g4 g4 d'8 f8 fis8 g8~ |
    g8 g8 g8 d8 g8 f8 c8 cis8 |

    r1 | r1 | r1 | r1 | r1 | r1
    \repeat volta 7 {
      d,4 d4 r2 |
    }
    \alternative {
      { r1 }
      { r2 d'2\glissando }
    }

    \repeat volta 3 {
        d,4 d4 c'8 d8 d8 c8 |
    }
    \alternative {
      { d8 d8 c8 d8 d8 c4. | }
      { d8 d8 c8 d8 d8 d8 c4 | }
    }
    g2 a2 |
    d,4 d4 c'8 d8 d8 c8 |
    d8 d8 c8 d8 c8 d8 d8 d8 | \break

    % chorus 3
    \mark \default
    d8 r8 d4 f8 g8 f8 b,8 |
    c8 r8 c4 d8 c8 bes8 a8 |
    g8 r8 g4 a8 r8 a4 |
    bes8 r8 bes4 a4 a8 c8 |
    d4 bes'8 d,8 bes'8 g8 f8 d8 |
    c8 r8 c4 c8 c8 d8 e8 |
    f8 r8 f4 c'8 f,4 c'8 \glissando |
    d8 c8 g8 f8 bes8 a8 g8 f8 |
    dis8 r8 dis4 bes'4 a8 e8 |
    d4 d8 d8 f4 fis4 |
    g4 f4 d8 f8 fis8 g8 |
    g,8 g8 g8 g8 g8 g8 c8 cis8 | \break

    % chorus 4
    \mark \default
    d8 r8 d4 a'8 g8 f8 d8 |
    c8 r8 c4 g'4 c,8 a8 |
    g8 r8 g4 a8 r8 a4 |
    bes8 r8 bes4 a4 a8 c8 |  \break
    d8 r8 d4 e8 d8 f8 d8 |
    c8 r8 c8 c8 d4 e4 |
    f8 r8 f4 c4 d8 c8 |
    f4 c'4 bes8 a8 g8 f8 |  \break
    dis8 r8 dis4 bes'8 a8 g8 e8 |
    d8 r8 d8 d8 e4 f4 |
    g4 g4 d8 g8 g8 g8 |
    g8 g,8 g8 a8 bis8 bis8 c8 c8 | \break

    % bridge
    \mark \default
    d4 d4 d4 d8 d8 |
    c4 c4 c4 c8 c8 |
    g4 g4 a4 a8 a8 |
    bes4 bes4 a4 bes8 c8 |
    d4 d4 d4 d8 e8 |
    e4 e4 e4 e8 f8 |
    f4 f4 f4 c8 f8~ |
    f8 f8 g8 c8 dis4 a8 g8 |
    dis4 dis4 dis4 dis8 dis8 |
    d4 d4 f4 f8 fis8 |
    g4 g4 d8 g8 g8 g8~ |
    g8 g8 g8 g8 d4 f4 |
    g,4 g4 g'8 g8 g8 g8~ |
    g8 g,8 g8 a8 bes4 c8 c8 | \break

    % bridgish
    \mark \default
    d8 r8 d4 f8 g8 f8 e8 |
    c8 r8 c4 g'8 f8 e8 c8 |
    g8 r8 g4 a8 r8 a4 |
    bes8 r8 bes4 a4 bes4 |  \break
    d2 d'8 c8 a8 g8 |
    c,8 r8 c4 d4 d4 |
    f8 r8 f4 c'8 f,4 c'8 \glissando |
    d8 c8 a8 g8 bes8 a8 g8 f8 |  \break
    dis8 r8 dis4 bes'4 a8 e8 |
    d8 r8 d4 dis8 e8 f4 |
    g4 g4 d8 f4 a8~ |
    a8 g,8 g8 g8 g8 a8 bes8 c8 | \break

    % effin done
    \mark \default
    d8 r8 d4 a'4 g8 f8 |
    d8 r8 d4 f8 e8 d8 c8 |
    g8 r8 g4 a8 r8 a4 |
    bes8 r8 bes4 a4 bes4 |  \break
    d4 a'4 g8 f8 e8 d8 |
    c8 r8 c4 c8 c8 d8 e8 |
    f8 r8 f4 c4 d8 f8~ |
    f4 f4 bes8 a8 g8 f8 |  \break
    dis8 r8 dis4 bes'4 a8 e8 |
    d8 r8 d4 dis4 f4 |
    g4 g4 d8 d8 f8 g8~ |
    g8 d8 d8 d8 f8 f8 g8 g8 |  \break
    g,4 g4 d'8 d8 d8 g8 |
    g8 g8 g,8 g8 c8 c8 d8 d8 |
    f,1 |
    c'1 |
    d1
}

\score {
    \new Staff \melody
    \layout { }
}
