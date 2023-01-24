# Day 7 Solutions
⟨_split, Int⟩ ← •Import "util.bqn"
input ← •FLines "inputs/07.txt"

# Create listing of ⟨path, dir/file name, size (if file)⟩
Step ← {l‿p 𝕊 c: (⊑"$ cd"‿"$ ls"‿"dir "⊐·<4⊸↑)◶⟨
    {".." ≡ ¯2↑𝕩 ? ⟨l, ¯1↓p⟩ ; ⟨l, p∾<5↓𝕩⟩}
    {𝕊: ⟨l, p⟩}
    {⟨l∾<⟨p, 4↓𝕩⟩, p⟩}
    {s‿n←' '=_split 𝕩 ⋄ ⟨l∾<⟨p, n, Int s⟩, p⟩}
  ⟩ c
}
listing ← ⍷⊑ ⟨⟩‿⟨⟩ Step˜´⌽ input

# Build Directory Tree
BDT ← {listing 𝕊 path:
  inDir ← (path≡⊑)¨⊸/listing
  Proc ← {path‿name‿size: ⟨"file", name, size⟩;
          path‿name: listing BDT path∾<name}
  ⟨"dir", ¯1↑path, Proc¨inDir⟩
}
tree ← listing BDT ⟨"/"⟩

# Part 1
sizes ← {𝕊 ⟨"dir", name, contents⟩:
  fileSizes ← 2⊑¨("file"≡⊑)¨⊸/contents
  dirSizes ← 𝕊¨ ("dir"≡⊑)¨⊸/contents
  ⟨(+´fileSizes) + +´⊑¨dirSizes⟩∾∾dirSizes
} tree
•Show +´1e5⊸≥⊸/sizes

# Part 2
•Show ⌊´(4e7⊸≥ ⊑⊸-)⊸/sizes
