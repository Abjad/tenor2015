#(set-global-staff-size 12)

\layout {
    indent = 2\mm
    ragged-right = ##t
    \context {
        \Score
        \remove Bar_number_engraver
        \override SpacingSpanner.strict-grace-spacing = ##t
        \override SpacingSpanner.strict-note-spacing = ##t
        \override SpacingSpanner.uniform-stretching = ##t
        \override TupletBracket.bracket-visibility = ##t
        \override TupletBracket.minimum-length = 3
        \override TupletBracket.padding = 1
        \override TupletBracket.outside-staff-padding = 1
        \override TupletBracket.staff-padding = 3
        \override TupletBracket.springs-and-rods = #ly:spanner::set-spacing-rods
        \override TupletNumber.text = #tuplet-number::calc-fraction-text
        proportionalNotationDuration = #(ly:make-moment 1 24)
        tupletFullLength = ##t
    }
}

\paper {
    left-margin = 1\in
}