\version "2.18.2"

\header {
  title = "Blues in B flat"
  composer = "Jamey Aebersold"
}

bassline = \relative bes {
    \time 4/4
    \clef bass
    \key bes \major
    \partial 16 a,16-"ch"-"sc" |

    bes4-"R" b4-"ch" c4-"sc" d-"ch"-"sc" |
    es4-"R" bes'4-"5" g4-"?" es16-"R" f16-"sc" es16-"R" f16-"dom" |
    bes,8.-"R" e,16-"ch" f4-"5" fis4-"ch" g4-"sc" |
    f8.-"5" c'16-"ch" b4-"ch" bes4-"R" e4-"ch" |
    es8.-"R" as,16-"ch" g4-"ch" as4-"ch" a4-"ch" |
    bes8.-"5" c16-"?" es4-"R" g8.-"sc" g16-"sc" a4-"sc"-"ch" |
    bes8.-"R" d,16-"?" f4-"?" d4-"?" bes8.-"R" c16-"sc" |
    d4-"R" fis4-"ch"-"sc" g4-"R" \tuplet 3/4 { c16-"5"-"dom" g-"R" d-"sc" } |
    c4-"R" e,4-"?" g4-"5"-"dom" c4-"R"-"dom" |
    f,4-"R" c'4-"5"-"dom" f4-"R" eis8.-"?" a,16-"dom" |
    d4-"R" as4-"ch" g4-"R" des'4-"ch" |
    c8.-"R" ges'16-"ch"-"dom" f8.-"?" e16-"ch"-"sc" f8.-"R" c'16-"5"-"dom" f8.-"R" c16-"5"-"sc" |

    bes8. bes16 ges4 f4 bes8. d,16 |
    es8. aes,16 ges4 g4 bes4 |
    bes8. f16 fis4 g4 a4 |
    bes4 c4 cis4 d4 |
    es4 a4 bes8. cis16 d4 |
    es8. g,16 bes4 g8. des16 es4 |
    bes4 f'4 bes,8. e,16 f8. cis'16 |
    d4 fis4 g4 dis4 |
    c8. c16 bes4 g4 c4 |
    f,4 b8. c16 f4 c8. cis16 |
    d4 g,4 g'4 c,4 |
    fis4-"wtf?" g,4 f8. c'16 b4
}

#(define (Text_align_engraver ctx)
  (let ((scripts '())
        (note-column #f))
    (make-engraver
     (acknowledgers
      ((note-column-interface trans grob source)
       ;; cache NoteColumn in this Voice context
       (set! note-column grob))
      ((text-script-interface trans grob source)
       ;; whenever a TextScript is acknowledged,
       ;; add it to `scripts' list
       (set! scripts (cons grob scripts))))
     ((stop-translation-timestep trans)
      ;; if any TextScript grobs exist,
      ;; set NoteColumn as X-parent
      (for-each (lambda (script)
      (set! (ly:grob-parent script X) note-column))
    scripts)
      ;; clear scripts ready for next timestep
      (set! scripts '())))))

\layout {
  \context {
    \Voice 
    \consists #Text_align_engraver
    \override TextScript.X-offset =
      #ly:self-alignment-interface::aligned-on-x-parent
    \override TextScript.self-alignment-X = #CENTER
  }
}

<<
  \chords {
    r16
    
    bes1:7 es1:7 bes1:7 bes1:7
    es1:7 es1:7 bes1:7 d2:m7 g2:7
    c1:m7 f1:7 d2:m7 g2:7 c2:7 f2:7

    bes1:7 es1:7 bes1:7 bes1:7
    es1:7 es1:7 bes1:7 d2:m7 g2:7
    c1:m7 f1:7 d2:m7 g2:7 c2:7 f2:7
  }

  \new Staff {
    \bassline
  }
>>

\score {
  \unfoldRepeats \bassline
  \midi { }
}