# Day 4 Solutions
⟨_split, Int⟩ ← •Import "util.bqn"
input ← (Int¨ ∊⟜",-"_split)¨ •FLines "04.txt"
•Show +´0≥(×´·-˝2‿2⊸⥊)¨ input
•Show +´{a‿b‿c‿d: ((a≤c)∧(b≥c))∨((c≤a)∧(d≥a))}¨ input
