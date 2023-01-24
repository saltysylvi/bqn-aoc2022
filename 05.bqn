# Day 5 Solutions
⟨_split, Int⟩ ← •Import "util.bqn"
input ← (0=≠¨)_split •FLines "inputs/05.txt"
stacks ← ' '⊸≠⊸/¨<˘⍉¯1↓>(1⊸⊑¨·<˘↑‿4⊸⥊)¨⊑input
proc ← (Int¨1‿3‿5⊏(' '⊸=)_split)¨ 1⊑input
•Show ⊑¨ stacks {s𝕊n‿i‿j: ({a‿b:⟨n↓a, (⌽n↑a)∾b⟩})⌾((i‿j-1)⊸⊏)s}˜´⌽ proc
•Show ⊑¨ stacks {s𝕊n‿i‿j: ({a‿b:⟨n↓a, (n↑a)∾b⟩})⌾((i‿j-1)⊸⊏)s}˜´⌽ proc
