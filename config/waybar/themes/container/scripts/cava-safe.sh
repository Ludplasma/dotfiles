#!/usr/bin/env bash

bars=("▁" "▂" "▃" "▄" "▅" "▆" "▇" "█")
max_index=$((${#bars[@]} - 1))

stdbuf -oL cava 2>/dev/null | while IFS= read -r line; do
  out=""
  for ((i = 0; i < ${#line}; i++)); do
    c="${line:i:1}"
    if [[ "$c" =~ [0-9] ]]; then
      idx=$c
      ((idx > max_index)) && idx=$max_index
      out+="${bars[$idx]}"
    else
      out+=" "
    fi
  done
  [ -z "$out" ] && out=" "
  echo "$out"
done
