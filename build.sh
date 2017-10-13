#!/usr/bin/env bash

pandoc_flags='-H layout/header.tex --template=layout/layout.tex --listings --latex-engine=xelatex'

# Generate git revision information.
# Will be included in the document header.
rev=$(printf "r%s.%s" "$(git rev-list --count HEAD)" "$(git rev-parse --short HEAD)")
echo "$rev" > git_tag

# Build PDFs
echo "Building: exercises"
pandoc $(ls [0-9]*-*.md) $pandoc_flags -o exercises.pdf
[[ $? == 0 ]] && echo "ok"
echo "Building: solutions"
pandoc $(ls solutions/[0-9]*-*.md) $pandoc_flags -o solutions.pdf
[[ $? == 0 ]] && echo "ok"

