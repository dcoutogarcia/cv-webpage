#! /bin/bash

WORK_DIR="$(pwd)"
PDF_DIR="$WORK_DIR/pdf"
WEB_DIR="$WORK_DIR/webpage/pdf"


typst compile $PDF_DIR/spanish.typ --font-path=$PDF_DIR
typst compile $PDF_DIR/english.typ --font-path=$PDF_DIR

mv $PDF_DIR/spanish.pdf $WEB_DIR/DiegoCouto-CV-ES.pdf
mv $PDF_DIR/english.pdf $WEB_DIR/DiegoCouto-CV-EN.pdf


