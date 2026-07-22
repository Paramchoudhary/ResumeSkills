#!/usr/bin/env bash
# Regenerates .agents/skills and all per-tool skill directories as relative
# symlinks to the canonical skills/ directory.
#
# Usage:
#   scripts/sync-skills.sh           # regenerate all symlink mirrors
#   scripts/sync-skills.sh --check   # exit 1 if any mirror is out of sync (used by CI)
set -euo pipefail
cd "$(dirname "$0")/.."
MIRRORS=".agents .agent .claude .codex .cursor .gemini .opencode .windsurf"

if [[ "${1:-}" == "--check" ]]; then
  status=0
  for d in $MIRRORS; do
    for s in skills/*/; do
      n=$(basename "$s")
      [[ "$(readlink "$d/skills/$n" 2>/dev/null)" == "../../skills/$n" ]] || { echo "OUT OF SYNC: $d/skills/$n"; status=1; }
    done
    for l in "$d"/skills/*; do
      [[ -e "$l" || -L "$l" ]] || continue   # empty glob
      [[ -d "skills/$(basename "$l")" ]] || { echo "STALE: $l"; status=1; }
    done
  done
  if [[ $status -eq 0 ]]; then
    echo "All skill symlinks in sync."
  else
    echo "Run scripts/sync-skills.sh to fix."
  fi
  exit $status
fi

for d in $MIRRORS; do
  rm -rf "$d/skills"
  mkdir -p "$d/skills"
  for s in skills/*/; do
    n=$(basename "$s")
    ln -s "../../skills/$n" "$d/skills/$n"
  done
done
echo "Synced $(ls skills | wc -l | tr -d ' ') skills into: $MIRRORS"
