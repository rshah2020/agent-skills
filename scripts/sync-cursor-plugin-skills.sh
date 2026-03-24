#!/bin/bash
set -euo pipefail

repo_root="$(cd "$(dirname "$0")/.." && pwd)"
source_dir="$repo_root/skills"
target_dir="$repo_root/cursor-plugins/firebase/skills"

if [ ! -d "$source_dir" ]; then
  echo "Source skills directory not found: $source_dir" >&2
  exit 1
fi

mkdir -p "$target_dir"

if [ -L "$target_dir" ]; then
  rm "$target_dir"
  mkdir -p "$target_dir"
fi

rsync -a --delete "$source_dir/" "$target_dir/"

echo "Synced Firebase skills into Cursor plugin bundle."
