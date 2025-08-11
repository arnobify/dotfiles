#!/usr/bin/env bash

cat << "EOF"


   _____ __________  _______   ________ __________
  /  _  \\______   \ \      \  \_____  \\______   \
 /  /_\  \|       _/ /   |   \  /   |   \|    |  _/
/    |    \    |   \/    |    \/    |    \    |   \
\____|__  /____|_  /\____|__  /\_______  /______  /
        \/       \/         \/         \/       \/

EOF

echo

# Variables
REPO_RAW_BASE="https://raw.githubusercontent.com/arnobify/dotfiles/main"
FILES=(
  ".bashrc"
  ".vimrc"
)

# Go through each file
for file in "${FILES[@]}"; do
  url="$REPO_RAW_BASE/$file"
  echo "Fetching $file from $url..."

  tmp="$(mktemp)"
  if ! curl -fsSL "$url" -o "$tmp"; then
    echo "  [Error] Failed to download $file"; rm -f "$tmp"
    continue
  fi

  case "$file" in
    ".bashrc")
      dest="$HOME/.bashrc"
      ;;
    ".vimrc")
      dest="$HOME/.vimrc"
      ;;
    "gitconfig.sh")
      dest="$HOME/.gitconfig"  # adjust if needed
      ;;
    *)
      dest="$HOME/$file"
      ;;
  esac

  echo "Backing up current $dest to ${dest}.bak"
  cp -n "$dest" "${dest}.bak" 2>/dev/null || echo "  [Warning] No original file to backup."

  echo "Appending contents of $file to $dest"
  cat "$tmp" >> "$dest"

  rm -f "$tmp"
  echo "Done with $file."
done

echo "All files processed. Please review your updated configs."

