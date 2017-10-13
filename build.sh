#!/usr/bin/env bash

pandoc_flags='--include-in-header=layout/header.tex --template=layout/layout.tex --listings --latex-engine=xelatex'

# Generate git revision information.
# Will be included in the document header.
rev=$(printf "r%s.%s" "$(git rev-list --count HEAD)" "$(git rev-parse --short HEAD)")
echo "$rev" > git_tag

# Build exercises pdf
echo "Building: exercises"
pandoc $(ls [0-9]*-*.md) $pandoc_flags --output exercises.pdf
if [[ $? == 0 ]]; then
	echo "ok"
else
	echo "building exercises failed with status $?"
fi

# Build solutions pdf
echo "Building: solutions"
pandoc $(ls solutions/[0-9]*-*.md) $pandoc_flags --output solutions.pdf
if [[ $? == 0 ]]; then
	echo "ok"
else
	echo "building solutions failed with status $?"
fi
