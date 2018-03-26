#!/usr/bin/env bash

set -e

TEX_FILE="${1%.md}.tex"
PDF_FILE="${1%.md}.pdf"
pandoc --template styles/style.tex --standalone --from markdown --to context --variable papersize=A4 -o "$TEX_FILE" "$1" >/dev/null
context "$TEX_FILE" --result="$PDF_FILE" >/dev/null
rm "$TEX_FILE"
rm "${1%.md}.tuc"
rm "${1%.md}.log"
