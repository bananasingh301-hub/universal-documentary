---
name: universal-documentary
description: >-
  Universal end-to-end procedural documentary film engine. Directs YouTube scriptwriting (21 hook formulas,
  retention pacing, 150 WPM), semantic style routing (50 procedural styles across 5 emotional clusters),
  cinematic directing grammar (sound-first, camera grammar, music grid pacing), deterministic WebGL/Three.js/Canvas2D
  runtime architecture, headless CDP-to-FFmpeg video rendering, and pre-render QA gates.
---

# Universal Procedural Documentary Film Engine

This skill governs end-to-end procedural documentary video creation—from raw topic ideation and hook scoring to 50-style procedural scene generation and automated video rendering.

## 1. System Laws & Architectural Constraints

- **Rule 1: The 30–45 Second Style Lock (Macro-Beats):** When a visual style triggers based on narration emotion or subject metaphor, it **MUST remain locked for 30–45 seconds** (70–110 words at 150 WPM). *Hook Exception:* `text-flash-cuts` is permitted to run for 8–15s during the Act 1 hook (0:00–0:15) or major plot twists.
- **Rule 2: The 5-Second Micro-Movement Mandate:** No frame may remain visually static for more than 5 seconds. Every 5s, the canvas must execute a camera shift, parameter update, layer transition, or geometric action tied to the narration.
- **Rule 3: Universal Active Style Execution:** All 50 styles are active first-class citizens. 45 run pure procedural code (WebGL/Three.js/Canvas2D); 5 ingest external photo, map, or 3D assets directly (`briefing-board`, `double-exposure`, `map-explainer`, `satellite-briefing`, `white-model`).
- **Rule 4: Polarity & Optical Bridges:** Standardized 30 fps render target. Shifting between `dark` and `light` polarities requires a 0.5-second audio-led cut-to-black or `blueprint` bridge.

---

## 2. Partitioned Reference Manuals

The operational knowledge of this engine is cleanly partitioned across modular manuals:
- **YouTube Scriptwriting & 21 Hooks:** [`docs/HOOKS.md`](docs/HOOKS.md) — 21 hook formulas, retention scoring, script shape (Hook, Turn, Body, Payoff, Close), and 150 WPM pacing.
- **Directing, Sound & Camera Grammar:** [`docs/DIRECTOR.md`](docs/DIRECTOR.md) — Directing hierarchy (Sound -> Rhythm -> Camera -> Directing), 3-layer sound design (-14 LUFS, 2 deliberate silences), music grid pacing, and camera rules.
- **Deterministic WebGL / Canvas2D Pipeline:** [`docs/TECHNIQUE.md`](docs/TECHNIQUE.md) — `window.render(t)` deterministic lifecycle, seeded PRNG laws, headless CDP frame capture, and FFmpeg muxing.
- **The 50-Style Semantic Trigger Map:** [`docs/TRIGGER_MAP.md`](docs/TRIGGER_MAP.md) — The 5 thematic clusters mapping narration keywords and emotions to the 50 active styles.
- **Individual Style Specifications:** Inspect any target style in `styles/<slug>/STYLE.md` for exact visual laws, shaders, typography, audio palettes, and working code in `styles/<slug>/demo/`.

---

## 3. The 5-Step Scene Generation Pipeline

```
[ Raw Topic & Investigation Goal ]
                │
                ▼
  Step 1: Script & 21-Hook Generation (15s Hook, Turn, Body Beats at 150 WPM)
                │
                ▼
  Step 2: Script Chunking (70–110 Words = 30–45s Macro-Blocks)
                │
                ▼
  Step 3: Semantic Style Router (Maps Block Metaphor to 1 of 50 Styles via docs/TRIGGER_MAP.md)
                │
                ▼
  Step 4: 5-Second Micro-Movement Choreography (Translates Narration to Kinetic Actions)
                │
                ▼
  Step 5: Scene Manifest Compilation & Procedural WebGL/CDP Rendering
```

---

## 4. Scene Execution Manifest Schema

Every scene must compile into this strict JSON execution manifest before rendering:

```json
{
  "scene_id": "SCENE_001",
  "topic": "The Failure of Flight 800",
  "macro_beat": {
    "duration_sec": 30.0,
    "style_slug": "dark-documentary",
    "polarity": "dark",
    "matched_keywords": ["radar", "abyss", "undetected", "scanning"],
    "voiceover_text": "Twelve miles off the coast of East Moriches, air traffic control radar picked up a primary target that suddenly split into three distinct returns. In less than forty seconds, eight hundred thousand pounds of commercial airliner vanished from transponder telemetry."
  },
  "micro_beats_5s": [
    {
      "sec_range": [0.0, 5.0],
      "narration_segment": "Twelve miles off the coast of East Moriches...",
      "visual_action": "Radar contour line sweeps through abyssal void, generating cold blue ocean depth echoes",
      "camera": "static_wide_orthographic"
    },
    {
      "sec_range": [5.0, 10.0],
      "narration_segment": "...air traffic control radar picked up a primary target...",
      "visual_action": "Single amber telemetry target locks onto flight path; altitude digits flicker live",
      "camera": "slow_push_in"
    },
    {
      "sec_range": [10.0, 15.0],
      "narration_segment": "...that suddenly split into three distinct returns.",
      "visual_action": "Primary target blooms into three diverging trajectory vectors with signal-red alarm collars",
      "camera": "focus_pull_macro"
    },
    {
      "sec_range": [15.0, 20.0],
      "narration_segment": "In less than forty seconds...",
      "visual_action": "Telemetry HUD rolls down; radar scan frequency accelerates to 120 RPM",
      "camera": "orbit_30_deg"
    },
    {
      "sec_range": [20.0, 25.0],
      "narration_segment": "...eight hundred thousand pounds of commercial airliner...",
      "visual_action": "3D wireframe aircraft geometry flashes white before separating along center fuel tank seam",
      "camera": "tilt_up_diorama"
    },
    {
      "sec_range": [25.0, 30.0],
      "narration_segment": "...vanished from transponder telemetry.",
      "visual_action": "Phosphor persistence decays into static noise floor; target boxes blink 'SIGNAL LOST'",
      "camera": "hold_and_fade_black"
    }
  ]
}
```

---

## 5. Automated Pre-Render QA Gate & Checklist

Before rendering:
1. **Duration Compliance Gate:** `macro_beat.duration_sec` must be 30.0–45.0s (8.0–15.0s strictly for `text-flash-cuts` hook).
2. **5-Second Movement Gate:** `micro_beats_5s` contains exactly `duration_sec / 5` entries.
3. **Asset Verification Gate:** For photo/data-backed styles (`briefing-board`, `double-exposure`, `map-explainer`, `satellite-briefing`, `white-model`), confirm required input assets are linked in the scene directory.
4. **Polarity Shift Gate:** Verify a 0.5s audio cut-to-black bridge is present when shifting between dark and light polarities.
5. **Readability Check:** Verify all on-screen subtitles hold for >= 1.8s via `core/render/readcheck.mjs`.
