#!/bin/sh

# abort on error
set -e

# CONF
OUTPUT="Source/Source.md"
TMPDIR="/tmp/pmsource"

mkdir -p "$TMPDIR"
rm -rf "$TMPDIR/*"

# mill in the tmpdir - combined files will stay there
mill output --DEBUG:on --DEBUG:workingdir="$TMPDIR"

# grab the combined files

# make 'Source' markdown from combined files
cat Source/Source-Title.md              > "$OUTPUT"
                                       
echo ''                                >> "$OUTPUT"
echo ''                                >> "$OUTPUT"
echo '# Introduction'                  >> "$OUTPUT"
echo ''                                >> "$OUTPUT"
echo '```````````````````````````````' >> "$OUTPUT"
cat "$TMPDIR/Introduction.md"          >> "$OUTPUT"
echo '```````````````````````````````' >> "$OUTPUT"
echo ''                                >> "$OUTPUT"
                                       
echo ''                                >> "$OUTPUT"
echo '# Manual'                        >> "$OUTPUT"
echo ''                                >> "$OUTPUT"
echo '```````````````````````````````' >> "$OUTPUT"
cat "$TMPDIR/Manual.md"                >> "$OUTPUT"
echo '```````````````````````````````' >> "$OUTPUT"
echo ''                                >> "$OUTPUT"
