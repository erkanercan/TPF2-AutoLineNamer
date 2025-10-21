#!/usr/bin/env bash
set -euo pipefail

# Deploy this repository as a Transport Fever 2 mod by copying it into the
# local Steam userdata mods folder. If a folder with the same name exists there
# it will be removed and replaced.
#
# Usage:
#   ./scripts/deploy_mod.sh                # uses default target base path
#   ./scripts/deploy_mod.sh /custom/path   # use custom target base path
#
# Default target base: use $HOME so the script doesn't contain a hard-coded username.
# Users can override by passing a custom path as the first argument.
DEFAULT_TARGET_BASE="$HOME/Library/Application Support/Steam/userdata/140317771/1066780/local/mods"

REPO_ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
REPO_NAME="$(basename "$REPO_ROOT")"

TARGET_BASE="${1:-$DEFAULT_TARGET_BASE}"
TARGET_DIR="$TARGET_BASE/$REPO_NAME"

echo "Deploying mod to: $TARGET_DIR"

# Ensure target base exists
mkdir -p "$TARGET_BASE"

# Remove existing target directory if present
if [ -d "$TARGET_DIR" ]; then
  echo "Removing existing folder at $TARGET_DIR"
  rm -rf -- "$TARGET_DIR"
fi

echo "Copying files from $REPO_ROOT to $TARGET_DIR"
# Use rsync to copy, exclude the git metadata and common editor files
rsync -a --delete \
  --exclude='.git' \
  --exclude='.gitignore' \
  --exclude='.vscode' \
  --exclude='*.swp' \
  --exclude='node_modules' \
  "$REPO_ROOT/" "$TARGET_DIR/"

echo "Deployment complete."
echo "Start Transport Fever 2 and enable the mod if needed."

exit 0
