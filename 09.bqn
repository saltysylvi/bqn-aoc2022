# Day 9 Solutions
⟨Int⟩ ← •Import "util.bqn"
input ← +`((9⥊0‿1)/⥊⋈⌜˜¯1‿0‿1)⊏˜"LDUR"⊐((Int 2⊸↓)¨/⊑¨) •FLines "inputs/09.txt"
F ← ⊣+·(1.5≤+´∘|)◶({××𝕏∘|}¨⌊‿⌈)2÷˜-˜
•Show ≠⍷(<0‿0)F`input
•Show ≠⍷(<0‿0)⊸(F`)⍟9 input
