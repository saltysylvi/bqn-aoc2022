# Utility functions
# -----------------

# split 𝕩 at the 1s in 𝕨𝔽𝕩, not including cells of 𝕩 at those locations
# 𝕨 can be omitted to split the 1s in 𝔽𝕩
_split ⇐ {(𝕨𝔽𝕩)(⊢-˜+`×¬)⊸⊔𝕩}

# string to integer
Int ⇐ (⊣+10×⊢)´·⌽-⟜'0'
