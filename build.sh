#!/usr/bin/env bash
echo -n "exercises..."
pandoc $(ls [0-9]-*.md) -o exercises.pdf
echo "ok"
echo -n "solutions..."
pandoc $(ls solutions/[0-9]-*.md) -o solutions.pdf
echo "ok"
