#!/usr/bin/env bash
set -euo pipefail

REPO_ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
cd "$REPO_ROOT"

echo "[sync] Repo: $REPO_ROOT"
echo "[sync] Fetching remote..."
git fetch origin

CURRENT_BRANCH="$(git rev-parse --abbrev-ref HEAD)"
UPSTREAM="origin/$CURRENT_BRANCH"

if git show-ref --quiet "refs/remotes/$UPSTREAM"; then
  echo "[sync] Pulling latest from $UPSTREAM..."
  git pull --ff-only origin "$CURRENT_BRANCH"
else
  echo "[sync] No upstream branch found for $CURRENT_BRANCH. Skipping pull."
fi

echo "[sync] Current HEAD:"
git log -1 --oneline

echo "[sync] Working tree status:"
git status --short

echo "[sync] Done."
