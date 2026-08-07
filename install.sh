#!/usr/bin/env bash
# Installs the wa-ai-voice skills into your Claude Code skills directory.
#   ./install.sh              install (or update) both skills
#   ./install.sh --uninstall  remove them
set -euo pipefail

SRC="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
DEST="${CLAUDE_SKILLS_DIR:-$HOME/.claude/skills}"
SKILLS=(wa-ai-voice wa-ai-voice-audit)

if [[ "${1:-}" == "--uninstall" ]]; then
  for s in "${SKILLS[@]}"; do
    rm -rf "${DEST:?}/$s"
    echo "removed $DEST/$s"
  done
  echo "Done. Restart Claude Code."
  exit 0
fi

mkdir -p "$DEST"

for s in "${SKILLS[@]}"; do
  if [[ ! -f "$SRC/$s/SKILL.md" ]]; then
    echo "error: $SRC/$s/SKILL.md not found — run this script from inside the repo." >&2
    exit 1
  fi
  rm -rf "${DEST:?}/$s"
  cp -R "$SRC/$s" "$DEST/$s"
  echo "installed $DEST/$s"
done

echo
echo "Installed:"
echo "  wa-ai-voice        applies on its own when you draft a Watershed deliverable"
echo "  wa-ai-voice-audit  invoke on a file: /wa-ai-voice-audit path/to/draft.md"
echo
echo "Restart Claude Code to pick them up. Re-run this script after a git pull to update."
