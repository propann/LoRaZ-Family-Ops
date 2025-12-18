#!/usr/bin/env bash
set -euo pipefail

ROOT_DIR="$(cd "$(dirname "$0")/.." && pwd)"
cd "$ROOT_DIR"

patterns=(
  "[0-9]{1,3}\\.[0-9]{1,3}\\.[0-9]{1,3}\\.[0-9]{1,3}"
  "psk:?[[:alpha:]]*:?[0-9a-fA-F]{32,}"
  "Bearer\\s+[A-Za-z0-9\\-\\._]+"
  "api[_-]?key"
  "password=\"?.+\"?"
  "token=\"?.+\"?"
  "mqtt://"
  "http://[0-9]{1,3}(\\.[0-9]{1,3}){3}:[0-9]{2,5}"
  "https://[0-9]{1,3}(\\.[0-9]{1,3}){3}:[0-9]{2,5}"
)

failed=0
for pat in "${patterns[@]}"; do
  if rg --pcre2 -n "$pat" --hidden --glob '!.git' --glob '!scripts/sanitize_repo.sh' >/tmp/sanitize_hits.txt; then
    echo "[ALERT] Sensitive-like pattern detected for '$pat':"
    cat /tmp/sanitize_hits.txt
    failed=1
  fi
done

rm -f /tmp/sanitize_hits.txt

if [ "$failed" -ne 0 ]; then
  echo "Sanitization failed. Please scrub the repository." >&2
  exit 1
fi

echo "Sanitization scan passed."
