# YouTube Scriptwriting & 21-Hook Retention Engine

The script drives the entire visual engine. A video fails if the viewer drops in the first 15 seconds.

## 1. Pre-Writing Voice & Verification Rules
1. **Voice Profile:** If `.agents/youtube/voice.md` exists, match the creator's pacing, taboo words, and tone. If absent, maintain an objective, authoritative, investigative documentary register.
2. **Anti-Hallucination Law:** Never invent statistics, results, or sources. If a specific metric is needed and unavailable, ask or state the fact qualitatively.

## 2. The First 15 Seconds (The Retention Gate)
The opening 15 seconds must accomplish three non-negotiable jobs:
1. **Confirm the Click:** Directly validate the title's promise in the first sentence. A hook ignoring its title causes drop-off at 0:08.
2. **Open an Unclosable Question:** Raise a tension, paradox, or stakes that the viewer cannot resolve without watching the conclusion.
3. **Prove the Payoff Exists:** Demonstrate that the answer or artifact exists and will be delivered.

## 3. The 21 YouTube Hook Formulas

| # | Formula Name | Slug | Mechanism & Shape | Worked Example | Fatal Failure Mode |
|:---|:---|:---|:---|:---|:---|
| 1 | **The Statistic** | `the-statistic` | A surprising number stated flat, followed by the consequence. | *"97% of people who start a channel quit before video 30. Here is what the other 3% do differently."* | Dies if the number is vague or unverified. |
| 2 | **Someone Else's Result** | `someone-elses-result` | A named person's concrete outcome, then the mechanism. | *"This studio went from 400 subscribers to 200,000 in seven months on one format. I mapped it."* | Inventing numbers or unprovable claims. |
| 3 | **The Mistake** | `the-mistake` | Name the exact error the viewer is making right now. | *"Your first 30 seconds are why nobody finishes your videos. It is not the topic."* | The mistake is uncommon or cannot be checked in 1 second. |
| 4 | **Contrarian Flip** | `contrarian-flip` | State accepted wisdom, then reject it with evidence. | *"Everyone says post daily. I posted once a week for a year and tripled the channel."* | Contrarian for its own sake without evidence in 15s. |
| 5 | **The Reveal** | `the-reveal` | Promise a specific artifact or document, then expose it. | *"For six months, this algorithm was secret. Yesterday, the source code leaked."* | Teasing without showing the artifact within 20 seconds. |
| 6 | **The Superlative** | `the-superlative` | The single fastest, deadliest, or largest of a category. | *"This is the most dangerous machine ever built by an aerospace lab."* | Over-promising and under-delivering. |
| 7 | **The Clock** | `the-clock` | Bound the payoff in strict, countdown time. | *"In the next 60 seconds, you will know exactly why this flight disappeared."* | Letting narration drag past the promised time. |
| 8 | **I Tried It** | `i-tried-it` | First-person experiment with a stated cost or pain point. | *"I spent 40 hours auditing 100 YouTube intros so you never have to guess."* | Emphasizing personal vanity over viewer utility. |
| 9 | **The Question** | `the-question` | Ask the exact burning question the viewer searched for. | *"Why does the ocean get completely pitch black at exactly 1,000 meters?"* | Asking rhetorical questions viewers already know. |
| 10 | **Before & After** | `the-before-after` | Two stark contrast states separated by one single change. | *"In 2020, this firm was bankrupt. Today, they handle 80% of global air cargo."* | Neglecting to explain the operational mechanism. |
| 11 | **The Teardown** | `the-teardown` | Physically or logically take an object apart in public. | *"We opened up a $10,000 industrial turbine to see where the bearing cracked."* | Hiding details or glossing over engineering flaws. |
| 12 | **The Stack** | `the-stack` | Combine two existing tools or ideas into a third novel outcome. | *"Take WebGL shaders, connect them to Kokoro TTS, and you get an autonomous documentary studio."* | Tool overload without practical output. |
| 13 | **The Warning** | `the-warning` | Expose an imminent cost or risk the viewer is about to suffer. | *"If you run this ffmpeg command with loudnorm 6.x, your audio stream will be truncated."* | Fearmongering without a concrete fix. |
| 14 | **The List** | `the-list` | A counted set with the exact count stated in line one. | *"Five decisions made in 1986 that still control the global internet today."* | Arbitrary counts with weak or duplicate entries. |
| 15 | **The Receipt** | `the-receipt` | Show the physical document/ledger first, explain second. | *"This single internal memo cost the automotive industry four billion dollars."* | Blurry or unreadable document presentation. |
| 16 | **The Insider** | `the-insider` | Leak an internal standard from within the institution. | *"Inside NASA, this checklist is required before every cryogenic engine ignition."* | Fabricated insider prestige. |
| 17 | **The Impossible Claim** | `the-impossible` | State a physical paradox or impossible event, then prove it. | *"A commercial jet engine once flew for four hours with zero oil pressure."* | Pseudoscience or misleading clickbait. |
| 18 | **The Comparison** | `the-comparison` | Put two giants side-by-side; crown one winner. | *"Two submersibles dived to the Titanic. One was certified steel; the other was carbon fiber."* | Bias without technical telemetry. |
| 19 | **The Origin** | `the-origin` | Reveal the obscure, bizarre source of a ubiquitous system. | *"The standard shipping container was invented by a trucker who got tired of waiting."* | Trivia without systemic narrative consequence. |
| 20 | **The Deadline** | `the-deadline` | A looming cliff date where everything changes. | *"On December 31st, the encryption protocol protecting every bank will be deprecated."* | Artificial urgency that is easily debunked. |
| 21 | **The Direct Address** | `the-direct-address` | Name the exact audience archetype in the first six words. | *"If you write code for a living, this architecture changes everything."* | Addressing too broad or mismatched an audience. |

## 4. Script Structure & Pacing Standards
- **Hook (0:00–0:15):** The winning scored hook. Zero channel logos, zero greetings, zero pleasantries.
- **The Turn (0:15–0:45):** State what the video will do in one crisp sentence, then begin immediately. Avoid the "before we get started" cliff.
- **The Spoken Body:** Paced at **150 words per minute**. Divided into 70–110 word macro-blocks (30–45 seconds). Every single beat MUST contain an explicit `[ON SCREEN: ...]` annotation defining the visual action.
- **The Payoff:** Explicitly deliver the promise made in the opening hook.
- **The Close:** Exactly **one** call to action. Never three.

## 5. Automated Hook Scoring CLI
Run candidate hook lines through the scoring script:
```bash
python core/tools/hookscore.py --hook "Your candidate opening line here"
```
