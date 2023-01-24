# Day 21 Solutions
⟨_split, Int, HashMap⟩ ← •Import "util.bqn"
_c ←  {1‿1≡•Type¨𝕨‿𝕩 ? 𝕨𝔽𝕩 ; 1=•Type𝕨 ? ∾⟨𝕨⊸𝔽⁼, 𝕩⟩; ∾⟨𝔽⟜𝕩⁼, 𝕨⟩}
Ops ← {"+":+_c; "*":×_c; "-":-_c; "/":÷_c}
h ← (¯1⊸↓∘⊑¨ HashMap {·‿a‿op‿b: ⟨a, Ops op, b⟩; ·‿num: Int num}¨) ' '⊸=_split¨ •FLines "inputs/21.txt"
Eval ← {{3=≠𝕩 ? {a‿f‿b:(Eval a) f{𝔽} Eval b}𝕩 ; 𝕩} h.Get 𝕩}
•Show Eval "root"
"humn" h.Set ⟨⟩
num‿funcs ← {1=•Type𝕩 ? 𝕩‿𝕨 ; 𝕨‿𝕩}´ Eval¨ 0‿2⊏h.Get "root"
•Show ({𝕎∘𝕏}´⌽funcs){𝔽} num
