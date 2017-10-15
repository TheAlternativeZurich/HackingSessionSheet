#!/usr/bin/env bash

# options for pandoc's template file. See the pandoc manual for an explanation of what they do.
template_vars='--variable=numbersections --variable=secnumdepth:1 --variable=toc --variable=documentclass:report'

# Use xelatex for better font support. Use --listings to be able to highlight code sections.
# Use our own template, in case we want to change something later.
pandoc_flags="--include-in-header=layout/header.tex --template=layout/layout.tex --listings --top-level-division=chapter --latex-engine=xelatex $template_vars"

# Generate git revision information.
# The document header includes this tag.
rev=$(printf "r%s.%s" "$(git rev-list --count HEAD)" "$(git rev-parse --short HEAD)")
echo "$rev" > git_tag

# Provide option to output tex file. Looking at the tex file makes debugging layout much easier.
out_format="pdf"
if [[ $1 == "--tex" ]]; then
	out_format="AUTOGEN.tex"
fi

# Build exercises pdf
echo "Building: exercises"
pandoc $(ls -- [0-9]*-*.md) $pandoc_flags --output "exercises.$out_format"
if [[ $? == 0 ]]; then
	echo "ok"
else
	echo "building exercises failed with status $?"
fi

# Build solutions pdf
echo "Building: solutions"
pandoc $(ls -- solutions/[0-9]*-*.md) $pandoc_flags --output "solutions.$out_format"
if [[ $? == 0 ]]; then
	echo "ok"
else
	echo "building solutions failed with status $?"
fi
