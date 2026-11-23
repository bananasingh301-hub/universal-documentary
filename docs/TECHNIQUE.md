# Deterministic WebGL / Canvas2D Technical Pipeline

Every visual frame is rendered from code without video generation models or static stock footage.

## 1. The Picture as a Function of Time
Every scene is encapsulated as an HTML/JS page exposing the strict deterministic lifecycle:

```js
window.DUR = 30.0;                       // Exact scene duration in seconds
window.render = (t) => { ... };          // Pure function: draws frame at time t (0.0 <= t <= DUR)
window.READY = true;                     // Set when all fonts, shaders, and meshes are loaded
window.EV = [{ t: 4.2, type: 'slam' }];  // Foley and cue events for the audio mixer
window.TEXTS = (t) => [{ id, text }];   // Text bounding boxes for automated readability checks
```

## 2. Determinism Laws
- **No `Date.now()` or unseeded `Math.random()`.** All randomness must use seeded PRNGs (`mulberry32`, `hash` from `core/lib.js`).
- **Zero Frame-to-Frame State Drift:** Any worker must be able to render frame `t=14.5` without rendering previous frames.
- **Frame Stepping:** Stepping on twos (12 fps) is permitted for traditional animation styles (cel, pixel, papercut), but the camera matrix, lighting, and HUD overlays must interpolate smoothly at 30 fps.

## 3. Automated Headless CDP Export Pipeline
The rendering pipeline operates headlessly via Chrome DevTools Protocol (CDP) and pipes raw image frames into FFmpeg:

```bash
# 1. Review style frames at key timestamps
node core/render/still.mjs <project_dir> 1.5 12 --range 0:30:5

# 2. Render complete frame sequence into MP4
node core/render/video.mjs <project_dir> --fps 30 --workers 3 --out out/video.mp4

# 3. Export audio cue timestamps
node core/render/events.mjs <project_dir>

# 4. Synthesize voice (TTS) & word alignments
python core/tts/tts.py lines.json voice_out/

# 5. Composite audio mix (voice + foley + music)
python mix.py

# 6. Two-pass FFmpeg loudnorm mux (-14 LUFS)
sh core/render/mux.sh out/video.mp4 out/mix.wav final_film.mp4 30
```
