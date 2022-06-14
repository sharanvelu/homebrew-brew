# homebrew-hombrew
Homebrew Repository for my OpenSource Projects

## Steps for generating SHA key
1. Download the necessary gunzip (.gz) file.
2. run `shasum -a 256 <path_to_gz_file.gz> | pbcopy`
3. Replace the content of `sha256` in the appropriate ruby file.
