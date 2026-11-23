#!/bin/sh
set -e
HERE=$(cd "$(dirname "$0")" && pwd)
SKILL_ROOT=$(cd "$HERE/.." && pwd)

echo "Rendering frames via CDP..."
node "$SKILL_ROOT/core/render/video.mjs" "$HERE" --fps 30 --out "$HERE/out/video.mp4"

echo "Mixing audio..."
python "$HERE/mix.py"

echo "Muxing final film at -14 LUFS..."
sh "$SKILL_ROOT/core/render/mux.sh" "$HERE/out/video.mp4" "$HERE/out/mix.wav" "$HERE/final.mp4" 30
echo "Done: $HERE/final.mp4"
