# Day 1 Solutions
⟨_split, Int⟩ ← •Import "util.bqn"
input ←  Int¨¨(0=≠¨)_split •FLines "inputs/01.txt"
•Show ⌈´+´¨input
•Show +´3↑∨+´¨input
