# Cinematic Directing, Cinematography & Sound Architecture

A film is judged in strict hierarchical order: **Sound -> Rhythm -> Camera -> Directing** (staging, contrast, emotional arc). Good-looking frames are merely table stakes.

## 1. Take the Brief & Set Defaults
- Length: **30–60 seconds** per topic beat. Shorter and tight beats padded.
- Resolution & FPS: **1920×1080 at 30 fps** (or 60 fps for hyper-kinetic interfaces).
- Loudness: Standardized **−14 LUFS** integrated loudness via FFmpeg two-pass `loudnorm`.

## 2. Benchmark First
Before coding or animating, identify 1–2 reference benchmarks (title sequences, documentaries, games, engineering animations):
- **What to learn:** Composition, pacing, camera grammar, color logic, score structure.
- **What NOT to take:** Characters, specific melodies, copyrighted designs, fonts.

## 3. Shape the Story
- **One subject, one goal, one turn:** A subject (or concept) encounters an obstacle, a pivot occurs, and it ends transformed.
- **Hook in first 3 seconds:** Zero slow logo reveals.
- **Ending that echoes:** Bookend the opening shot, reveal the true scale, or return to the original problem solved.
- **One Native Move:** Every film must feature one transition or visual stunt unique to its medium (e.g., ink bleeding into a map, circuit traces turning into street grids, paper folding into a diorama). Place it at the emotional climax.

## 4. Sound Design: Half the Film
- **Three Layers:**
  1. *Ambience Bed:* Room tone, wind, electrical hum, oceanic deep rumble.
  2. *Foley:* Tied to every physical action (paper rustles, clicks, metal impacts, valve releases).
  3. *Music:* Thematic score matching the style's acoustic world. Duck music automatically under narration.
- **Two Deliberate Silences:** Place at least two near-silences before major plot turns. The sound immediately following the silence must hit with maximum psychological impact.
- **Audio Transitions:** Use J-cuts (next scene audio enters early) and L-cuts (current audio bleeds over) to bind cuts together.

## 5. Rhythm & Music Grid
- Lock visual cuts, camera moves, and reveals to a music grid (BPM and bar intervals).
- **Vary the Pace:** Alternate fast, dense information blocks with reflective wide holds.
- **Reading Durations:**
  - Hold subtitles for at least **1.8 seconds**, and never shorter than `spoken_duration + 0.6s`.
  - Hold on-screen text for roughly `(letters ÷ 15 + 1.5)` seconds.
  - Hold major title cards for at least **4.0 seconds**.

## 6. Camera Grammar
- Use at least **four distinct camera moves** per film (push, pull, orbit, crane, lateral track).
- Never switch cameras randomly. Every camera move must have a semantic motivation (push = investigation; pull = scale reveal; track = traversal; orbit = spatial inspection).
- Keep camera trajectories completely smooth and continuous across 60/30 fps. Never step camera motion on twos.
