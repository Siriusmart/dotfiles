#!/bin/bash

cd "$HOME/Notes/entries"

noteFilename="$HOME/Notes/entries/entry-$(date +%Y-%m-%d).md"

if [ ! -f $noteFilename ]; then
  echo "# Entry for $(date +%Y-%m-%d)" > $noteFilename
fi

nvim -c "norm G2y" \
  -c "norm zz" \
  -c "set wrap" \
  -c "set foldlevel=99" \
  -c "startinsert" $noteFilename
