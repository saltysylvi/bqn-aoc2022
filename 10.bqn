# Day 10 Solutions
⟨Int⟩ ← •Import "util.bqn"
input ← ∾{"noop"≡4↑𝕩 ? 0 ; ⟨0,Int 5↓𝕩⟩}¨ •FLines "inputs/10.txt"
•Show +´×´¨(20=40|⊑¨)⊸/((2+↕∘≠)⋈¨⊢)(<1)+`input
•Show " #"⊏˜6‿40⥊⊑∘∊´¨((40|↕∘≠)⋈¨⊢)⊏⊸»(¯1+↕3)⊸+¨(<1)+`input
