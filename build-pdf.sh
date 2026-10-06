#!/usr/bin/env bash
set -euo pipefail

cd "$(dirname "$0")"

CHROME="${CHROME:-/Applications/Google Chrome.app/Contents/MacOS/Google Chrome}"
if [ ! -x "$CHROME" ]; then
  CHROME="$(command -v google-chrome || command -v chromium || true)"
fi
if [ -z "$CHROME" ]; then
  echo "Google Chrome / Chromium not found. Set CHROME=/path/to/chrome" >&2
  exit 1
fi

render() {
  local input="$1" output="$2"
  "$CHROME" --headless=new --disable-gpu --no-pdf-header-footer \
    --virtual-time-budget=8000 --run-all-compositor-stages-before-draw \
    --print-to-pdf="$PWD/$output" "file://$PWD/$input" >/dev/null 2>&1
  echo "Rendered $output"
}

render slides.html slides.pdf
render handbook.html handbook.pdf
