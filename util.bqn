# Utility functions
# -----------------

# split 𝕩 at the 1s in 𝔽𝕩, not including cells of 𝕩 at those locations
_split ⇐ {(𝔽𝕩)(⊢-˜+`×¬)⊸⊔𝕩}

# string to integer
Int ⇐ (⊣+10×⊢)´·⌽-⟜'0'
