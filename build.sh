#!/usr/bin/env bash
pandoc $(ls [0-9]-*.md) -o out.pdf
