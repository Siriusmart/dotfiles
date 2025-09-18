#!/bin/bash

cd "$HOME/Notes/quicknotes/"

noteFilename="$HOME/Notes/quicknotes/note-$(date +%Y-%m-%d).md"

if [ ! -f $noteFilename ]; then
  echo "# Notes for $(date +%Y-%m-%d)" > $noteFilename
fi

nvim -c "norm Gy" \
  -c "norm Gy## $(date +%H:%M)" \
  -c "norm G2y" \
  -c "norm zz" \
  -c "set wrap" \
  -c "set foldlevel=99" \
  -c "startinsert" $noteFilename
