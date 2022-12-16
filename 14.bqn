# Day 14 Solutions
⟨_split, Int, While, HashMap⟩ ← •Import "util.bqn"
input ← {{Int¨','=_split 𝕩}¨⊏⍉↑‿2⥊' '=_split 𝕩}¨•FLines"14.txt"
rocks ← ⍷∾{∾{(⊏𝕩)+⥊⋈⌜´↕¨¬˜´𝕩}¨<∘∧˘2↕𝕩}¨ input
Move ← ⊢+{0‿·‿·:0‿1; 1‿0‿·:¯1‿1; 1‿1‿0:1‿1; 1‿1‿1:0‿0}∘{𝕨.Has¨⟨0‿1,¯1‿1,1‿1⟩+<𝕩}
_limit ← {Func _𝕣 𝕩: ⟨a,b⟩←⟨𝕩,Func 𝕩⟩ ⋄ While {𝕤⋄a≠b}‿{𝕤⋄⟨a,b⟩↩⟨b,Func b⟩} ⋄ a}
Go ← {𝕊 rocks:
  EndCheck ← {1=⊑((⌊´⋈1+⌈´)⊑¨rocks)⍋𝕩}
  blocks ← rocks HashMap (≠rocks)⥊1
  i ← 0
  nextBlock ← (blocks⊸Move)⍟EndCheck _limit 500‿0
  While {𝕤⋄(EndCheck nextBlock)∧nextBlock≢500‿0}‿{𝕤
    i +↩ 1
    blocks.Set⟜1 nextBlock
    nextBlock ↩ (blocks⊸Move)⍟EndCheck _limit 500‿0    
  }
  i
}
# Part 1
•Show Go rocks
# Part 2
fh ← 2+⌈´1⊸⊑¨rocks # floor height
rocks ∾↩ {𝕩⋈fh}¨{(1⊑𝕩)+↕¬´𝕩}500(+⋈-)1+fh
•Show 1 + Go rocks
