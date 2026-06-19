#!/bin/bash

needs_root=false

for arg in "$@"; do
  if [[ "$arg" == -*S* && "$arg" != --* ]]; then
    if [[ "$arg" == *[silp]* && "$arg" != *[yuc]* ]]; then
      needs_root=false
    else
      needs_root=true
    fi
  elif [[ "$arg" == -*[RUD]* && "$arg" != --* ]]; then
    needs_root=true
  fi

  case "$arg" in
    --sync|--remove|--upgrade|--database) needs_root=true ;;
    --search|--info|--list) needs_root=false ;;
  esac
done

if $needs_root; then
  sudo pacman "$@"
else
  pacman "$@"
fi
