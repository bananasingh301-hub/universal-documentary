# Universal Procedural Documentary Film Engine

An autonomous, self-contained procedural documentary generation engine for AI agents (Antigravity & Gemini CLI).

Transforms raw ideas and investigation topics into code-generated, broadcast-quality documentary videos without video generation models or static stock footage.

---

## 🌟 Key Features

- **21 YouTube Hook Formulas:** Scored opening lines designed for maximum 0:15 viewer retention.
- **The 30–45s Style Lock Law:** Cinematic macro-blocks that prevent style whiplash and anchor spatial context.
- **5-Second Micro-Movement Mandate:** Enforces continuous visual dynamism, camera motion, and focal depth shifts every 5 seconds.
- **50 Active Procedural Styles:** Across 5 thematic clusters (Power & Conflict, Dread & Decay, Machines & Blueprints, Scale & Data, History & Memory).
- **Deterministic WebGL/Canvas2D Pipeline:** Pure `window.render(t)` contract, seeded PRNG (`mulberry32`), and zero mutable frame-to-frame drift.
- **Audio Architecture:** 3-layer sound design (ambience, foley, music), J/L cuts, 2 deliberate silences, and standardized −14 LUFS loudness.

---

## 📁 Repository Structure

```
.
├── SKILL.md                 # Master agent orchestrator & system laws
├── package.json             # NPM package definitions
├── requirements.txt         # Python audio/video dependencies
├── docs/                    # Partitioned reference documentation
│   ├── HOOKS.md             # The 21 YouTube hook formulas & 150 WPM pacing
│   ├── DIRECTOR.md          # Cinematography, camera grammar & audio standards
│   ├── TECHNIQUE.md         # Deterministic WebGL pipeline & headless CDP export
│   └── TRIGGER_MAP.md       # 50-style semantic trigger registry (5 clusters)
├── core/                    # Physical runtime execution engine
│   ├── lib.js               # Deterministic math, easing, and PRNG helpers
│   ├── render/              # Headless Chrome CDP capture & FFmpeg muxer (video.mjs, mux.sh)
│   ├── audio/               # Procedural audio synthesizers (sampler.py, pluck.py)
│   ├── tts/                 # Voiceover generator & whisper alignment tools (tts.py)
│   ├── fonts/               # 10 self-hosted web fonts (IBM Plex Mono, Inter, Barlow)
│   ├── post/                # WebGL2 post-processing shader passes
│   └── tools/               # YouTube hook ranking CLI (hookscore.py, hooks.json)
├── styles/                  # 50 active procedural style directories
│   ├── <slug>/STYLE.md      # Style specification, shaders, palette, and typography
│   └── <slug>/demo/         # Working HTML/JS WebGL implementations
└── templates/               # Boilerplate scene files (index.html, build.sh)
```

---

## 🚀 Quick Start

### 1. Test a YouTube Hook
```bash
python core/tools/hookscore.py --hook "97% of people who start a channel quit before video 30."
```

### 2. Scaffold a New Scene
```bash
cp -r templates/ my_scene/
cd my_scene/
```

### 3. Render Headless Video
```bash
# Preview still frames
node ../core/render/still.mjs . 1.5 12

# Render complete 30 fps video via Chrome CDP
node ../core/render/video.mjs . --fps 30 --workers 3 --out out/video.mp4

# Mux with -14 LUFS audio
sh ../core/render/mux.sh out/video.mp4 out/mix.wav final_film.mp4 30
```

---

## 📜 License

Private & Confidential. Copyright © 2026. All rights reserved.
