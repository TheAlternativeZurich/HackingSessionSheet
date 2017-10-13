#!/usr/bin/env bash
echo -n "exercises..."
FLAGS='-H layout/header.tex --template=layout/layout.tex --listings --latex-engine=xelatex'
pandoc $(ls [0-9]*-*.md) $FLAGS -o exercises.pdf
echo "ok"
echo -n "solutions..."
pandoc $(ls solutions/[0-9]*-*.md) $FLAGS -o solutions.pdf
echo "ok"
