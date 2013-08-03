#!/bin/sh

# abort on error
set -e

# CONF
LIST="mill-cli lib/commands/output lib/build/mill-build lib/readProjectConfig lib/alias lib/utils"

DOCS="CODE/C0DE.md"
SOURCES="CODE/sources/mill"
DOCCO="../../../node_modules/docco/bin/docco"

# check out sources
git submodule update --init

# prepare
cd $SOURCES
OUTPUT="../../../$DOCS"
cat /dev/null > $OUTPUT

# LOOP LIST
for FILE in $LIST; do
  
  NAME="$(basename "$FILE")"
  
  # docco: .js -> .md
  $DOCCO -l plain-markdown-js $FILE.js

  cd docs
  OUT="../$OUTPUT"
  
  # pandoc: shift headings 1 level down; rename
  pandoc --from markdown --to markdown \
    --base-header-level=2 --atx-headers --normalize \
    -o $NAME.s.md $NAME.html

  # insert name as first heading; combine
  echo "# $NAME.js" >> $OUT
  echo ""           >> $OUT
  cat "$NAME.s.md"  >> $OUT
  echo ""           >> $OUT
  echo ""           >> $OUT
  
  cd ..
  
done
