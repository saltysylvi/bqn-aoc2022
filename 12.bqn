# Day 12 Solutions
input ← >•FLines "12.txt"
r‿c ← ≢input
s‿e ← ⊑∘/˘"SE"=⌜⥊input
flatInput ← {'S':'a'; 'E':'z'; 𝕩}¨ ⥊input
Adj ← {𝕩⊸(1≥-○(⊏⟜flatInput))⊸/(≥⟜0∧<⟜(r×c))⊸/⟨c,-c,1,¯1⟩+𝕩}
BFS ← {start 𝕊 goals: 
  visited ← 1⌾(start⊸⊑)(r×c)⥊0
  0 {n Step q: {∨´goals∊q ? n ; (1+n) Step ∾{0⊸≤⊸/{𝕩⊑visited ? ¯1 ; visited↩1⌾(𝕩⊸⊑)visited ⋄ 𝕩}¨ Adj 𝕩}¨ q}} ⋈start
}
•Show e BFS ⋈s
•Show e BFS (/'a'=flatInput)
