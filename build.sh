#!/usr/bin/env bash
echo -n "running..."
pandoc $(ls [0-9]-*.md) -o out.pdf
echo "ok"
