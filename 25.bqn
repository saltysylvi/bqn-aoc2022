# Day 25 Solution
input ← •FLines "inputs/25.txt"
FromSNAFU ← +´ (5⋆↕∘≠) × · ⌽ · ⊏⟜0‿1‿2‿¯1‿¯2 "012-="⊸⊐
ToSNAFU ← ⊏⟜"012=-" ⟨⟩⊸{𝕨𝕊0: 𝕨; L ← 5⊸|⌾(2⊸+) ⋄ (𝕨∾˜L𝕩) 𝕊 5÷˜-⟜L 𝕩}
•Show ToSNAFU +´ FromSNAFU¨ input
