#!/bin/bash

# Directory to store commits (same as script location)
commit_dir="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
mkdir -p "$commit_dir"

help_message() {
  cat <<EOF
Usage: helper [option]

Helps with the commit files.

Options:
  -h             Show this help message
  -n             Create a new empty commit file with timestamp
  -l             List all existing commit files
  -r             Read the latest commit (cat)
  -w             Open the latest commit in nano editor
  -c             Remove all commits (asks for confirmation)

EOF
}

generate_filename() {
  echo "commit_$(date +"%Y_%m_%d-%H%M%S")"
}

get_latest_commit() {
  ls "$commit_dir"/commit_* 2>/dev/null | sort | tail -n 1
}

# Parse input
case "$1" in
  -h)
    help_message
    ;;

  -n)
    file="$commit_dir/$(generate_filename)"
    touch "$file"
    echo "[INFO] Created: $file"
    ;;

  -l)
    echo "[INFO] Listing commit files:"
    ls "$commit_dir"/commit_* 2>/dev/null || echo "[ERROR] No commits found."
    ;;

  -r)
    latest=$(get_latest_commit)
    if [[ -f "$latest" ]]; then
      echo "[INFO] Reading: $latest"
      echo
      cat "$latest"
      echo
    else
      echo "[ERROR] No commits found."
    fi
    ;;

  -c)
    read -p "[WARNING] Are you sure you want to delete ALL commits? [y/N]: " confirm
    if [[ "$confirm" == [yY] ]]; then
      rm -f "$commit_dir"/commit_*
      echo "[INFO] All commits deleted."
    else
      echo "[INFO] Clear cancelled."
    fi
    ;;

  -w)
    latest=$(get_latest_commit)
    if [[ ! -f "$latest" ]]; then
      echo "[ERROR] No commits found."
      exit 1
    fi
    echo "[INFO] Opening in editor: $latest"
    nano "$latest"
    ;;

  *)
    echo "[ERROR] Unknown option: $1"
    help_message
    ;;
esac

