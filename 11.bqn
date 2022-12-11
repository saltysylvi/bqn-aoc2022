# Day 11 Solutions
⟨_split, Int⟩ ← •Import "util.bqn"
ParseOp ← {"old"≡¯3↑𝕩 ? {"+ old": +˜; "* old": ×˜}𝕩 ; (⊑𝕩){'+'=𝕨 ? +⟜𝕩 ; ×⟜𝕩}Int 2↓𝕩}
ParseMonkey ← {⟨(Int 2⊸↑)¨' '=_split 18↓1⊑𝕩, ParseOp 23↓2⊑𝕩, Int 21↓3⊑𝕩, Int 29↓4⊑𝕩, Int 30↓5⊑𝕩⟩}
wl‿locs‿ops ← {⟨∾⊑¨𝕩,(≠∘⊑¨/↕∘≠)𝕩,1⊸↓¨𝕩⟩} ParseMonkey¨ (0=≠¨)_split •FLines "11.txt"
insp ← (≠ops)⥊0
_step ← {wl‿locs‿insp 𝔽 _𝕣 i:
  o←i⊑ops ⋄ j ← i=locs
  a←(𝔽(⊑o){𝔽})¨j/wl
  ⟨a⌾(j⊸/)wl
   ((2↓o)⊏˜0≠(1⊑o)|a)⌾(j⊸/)locs
   ((i⊑insp)++´j)⌾(i⊸⊑)insp
  ⟩
}
•Show ×´2↑∨2⊑ (⌊÷⟜3)_step˜´⟜(⌽↕≠ops)⍟20 wl‿locs‿insp
•Show ×´2↑∨2⊑ (×´1⊑¨ops)⊸|_step˜´⟜(⌽↕≠ops)⍟10000 wl‿locs‿insp
