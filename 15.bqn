# Day 15 Solutions
⟨Int, While⟩ ← •Import "util.bqn"
input ← {𝕊 line:<˘2‿2⥊{(Int ⊏⟜line)¨(⊑˘𝕩)+(1↓↕)¨-˜´˘𝕩}∘‿2⥊/1∾˜line∊"=,:"}¨ •FLines "inputs/15.txt"
# Part 1
•Show ((∾{(⊑𝕨)(+∾-)↕0⌈(+´|𝕨-𝕩)¬|2e6-1⊑𝕨}´¨) -○(≠⍷) ((2e6=1⊸⊑¨)⊸/1⊸⊑¨))input
# Part 2
sensors ← ⊑¨input
radii ← (+´|∘-)´¨ input
Score ← {+´0⌈1+radii-𝕩⊸(+´|∘-)¨sensors}
adj ← ⥊(⋈⌜˜↕3)-<1‿1
Move ← {𝕩+adj⊑˜⊑⊐⟜(⌊´)Score¨adj+<𝕩}
Go ← {𝕊𝕩:
  a ← 𝕩
  b ← Move a
  While {𝕤⋄(a≢b)∧∧´1=⟨0,4e6+1⟩⍋a}‿{𝕤
    ⟨a,b⟩↩⟨b,Move b⟩
  }
  {0=Score a ? a ; Go 2 •rand.Range 4e6}
}
•Show {𝕩+4e6×𝕨}´ Go 2e6‿2e6
