# Day 13 Solutions
⟨_split⟩ ← •Import "util.bqn"
input ←  •BQN¨¨(0=≠¨)_split (@+10)=_split "[⟨"‿"]⟩" (⊢+-˜´∘⊣×⊑⊸=)´˜ •FChars "inputs/13.txt"
Compare ← { # yuck...
  1‿1≡•Type¨𝕨‿𝕩 ? × 𝕩-𝕨 ;
  1‿0≡•Type¨𝕨‿𝕩 ? (⋈𝕨) Compare 𝕩 ;
  0‿1≡•Type¨𝕨‿𝕩 ? 𝕨 Compare ⋈𝕩 ;
  0‿0≡•Type¨𝕨‿𝕩 ? 
    𝕨{⟨⟩𝕊⟨⟩: 0;
      ⟨⟩𝕊 𝕩: 1;
      𝕨 𝕊⟨⟩: ¯1;
      𝕨 𝕊 𝕩: 𝕨{0 ≠ 𝕨 Compare○⊑ 𝕩 ? 𝕨 Compare○⊑ 𝕩 ; 𝕨 Compare○(1⊸↓) 𝕩}𝕩}𝕩
}
•Show +´1+/2÷˜1+Compare´¨ input

Sort ← {0=≠𝕩 ? 𝕩 ; m ← ⊏⊸(Compare¨) 𝕩 ⋄ ∾⟨Sort(¯1=m)/𝕩, (0=m)/𝕩, Sort(1=m)/𝕩⟩}
divs ← ⟨⟨⟨2⟩⟩,⟨⟨6⟩⟩⟩
•Show ×´1+(Sort divs∾∾input) ⊐ divs
