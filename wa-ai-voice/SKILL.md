---
name: wa-ai-voice
description: >
  The writing standard for Watershed work product. Apply by default whenever drafting
  or revising a client-facing or internal deliverable — memos, briefs, decks, proposals,
  grant narratives, client emails, one-pagers, analyses. Sets bottom-line-up-front
  structure, an advisor's point of view rather than a researcher's summary, precise
  language over filler, and catches writing that reads as AI-generated. Also use when
  asked to de-slop, humanize, tighten, or "make this sound like us." Not for personal
  writing outside Watershed work, and not for social reply batches.
---

# wa-ai-voice

Slop is not a vocabulary problem. It is manufactured upstream: alignment training collapses output toward the statistical mean (mode collapse, driven by typicality bias in preference data), single-sample generation returns the most typical completion, and a context starved of specifics can only produce the average of everything. Banned-word lists treat the symptom. At adoption scale they mint a new house style — the zero-em-dash, no-adverbs voice is already its own tell, and scrubbing signs mostly makes detection harder rather than making writing better.

**The job: make the output sound like a specific person with something specific to say.** Both halves are mandatory. This skill intervenes at four layers and measures whether it worked. It is a writing-quality protocol, not a detector-evasion tool.

---

## Modes

| Mode | When | Run |
|---|---|---|
| **DRAFT** | writing new text | Layers 1→2→3→4, ship with score |
| **AUDIT** | handed existing text | Layers 3→4, report score before/after + fix list |

---

## The contract — verify before generating anything

Two inputs separate writing from slop. Check both first:

**1. A bound voice.** In priority order:
- an explicit voice spec (voice file, brand guide, house style doc). **For Watershed ECE work product this is already bound: `references/watershed-ece-voice.md`. Read it in full before flagging or drafting anything.** An individual author's own voice file, when one exists, layers on top of the house spec rather than replacing it, or
- an explicit voice spec for other work, or
- 5+ writing samples from the author → build a voice card on the fly (`references/voice-binding.md`), or
- a named register the user states ("tired senior engineer in Slack", "state chief of staff writing to a superintendent").

**Watershed fallthrough — read this before stopping.** For any Watershed work product, the house spec IS the binding. Proceed; do not ask for samples. That covers practice areas beyond ECE and formats beyond memos (client emails, internal notes, one-pagers) — the posture and structure rules travel even where the ECE lexicon doesn't. Where the piece is outside ECE, say once which parts you applied generically, and keep writing. The STOP below is reserved for text with no Watershed context and no voice at all.

**If none exists and the fallthrough doesn't apply: STOP and say so.** Offer the choice: "Give me 5+ samples or name a register — otherwise I can deliver clean-generic, which reads fine but sounds like no one." NEVER silently fall back to a default voice. A default voice shipped by every agent is the next generation of slop.

**2. Specifics.** At least 3 concrete particulars the text can stand on: a number, a name, a date, a moment, a place, a mechanism, a contradiction, a thing that broke. No specifics in context → get them (ask the user, or pull from the material available to you). **Never invent particulars to fill the gap.** If neither is possible, say: "No specifics available — anything I write will be generic by construction." That sentence is more useful than the slop would have been.

Also pin **the one job**: who reads this, and what should they know/feel/do after. Can't answer → ask. For Watershed work product this is a required input, not a nicety: the same finding written for a state agency lead and for a funder is two different documents, and a piece drafted without a named reader defaults to addressing everyone, which is how it ends up directing no one.

---

## Layer 1 — FEED (starve the mean, feed the particular)

Slop is regression to the mean: the most statistically likely phrasing that fits the widest variety of cases. The mechanism is visible in any before/after — the specific "inventor of the first train-coupling device" becomes "a revolutionary titan of industry": less specific and more exaggerated at once.

Before drafting:
- Lay out the specifics you collected (contract item 2) — these are load-bearing, the draft hangs on them.
- Load 2–3 lines of the bound voice's actual writing into working context. You will draft *as* this voice, not edit toward it later.
- Note what the piece must NOT do (banned topics, claims the author can't support, register limits).

If the user asks for volume ("write 10 posts"), specifics divide across pieces. Fewer specifics than pieces → deliver fewer pieces and say so. Never stretch.

## Layer 2 — GENERATE (escape the mode)

The first completion is the mode — the most typical answer in the distribution. For voice-bearing text, never ship it unexamined.

- **Generate 3–5 candidates before judging.** Vary the *move*, not the synonyms: different opening (moment / claim / number / question / dry joke), different altitude (street-level detail vs. principle), different length. Same move five times = one candidate.
- **Verbalized sampling** (the only verified prompt-level fix for mode collapse, 1.6–2.1× diversity): generate the candidate set *with an estimated probability that a generic assistant would produce each one*. Discard the most-probable one or two — they are the centroid. Develop the best survivor. Recipes in `references/generation.md`.
- **Write as the voice from the first token.** Persona-at-generation beats persona-as-postedit (a persona prompt moved a frontier model from 36% to 73% judged-human). The voice card is in context; use its constructions while drafting, not after.
- Draft to natural length, then cut ~20%. Never write toward a word count.

## Layer 3 — GATE (audit in clusters, score honestly)

Run the five-question audit on every unit (sentence for short pieces, paragraph for long):

1. **INTERCHANGEABLE** — could this exact unit sit in 20 unrelated pieces unchanged? → rewrite around a specific. *Read forward first: a general claim that is immediately cashed out with a named specific passes. The house pattern is claim → `Current State:` receipt.*
2. **ADDITIVE** — does it add information or stance, or restate/pad what's already there? → cut.
3. **SHAPED** — is the structure imposed by template (intro/3-points/outro, setup+payoff, listicle reflex) rather than by the content? → reshape.
4. **VOICED** — could the bound author have typed this sentence? → refit (Layer 4).
5. **INSIGHT** — does this unit direct the reader, or does it name a thing and stop? Naming a fact, trend, or tension is summary. To pass, the unit must say whether it's good or bad and for whom, what's causing it, where it leads, or what to do about it. → connect the dot or cut the unit.

INSIGHT is the gate that separates an advisor from an observer, and it is the one a well-trained analyst fails most often — evidence presented neutrally reads as rigor. It applies wherever the piece is meant to influence what someone does. It does not apply to slots that are informational by design (a status line, a date, a roster) or to the legitimate-generic slots in `references/master-list.md` PART E.

Then sweep for tells (`references/tells.md`) with two non-negotiable rules:

- **Clusters, not singles.** One em-dash means nothing. One "delve" means little. Three catalog tells within ~100 words means rewrite that span. Flagging single tells produces the over-sanded text that stylometry catches at .98 accuracy for being *too tidy*.
- **The voice sets the caps.** If the author uses em-dashes, em-dashes are fine — at the author's observed rate. Frequency budgets come from the voice card. Global defaults (`references/tells.md` §caps) apply only when no voice is bound.

**Score it** (before fixing, and after — report both):

| Count per ~500 words (whole piece if shorter) | Points each |
|---|---|
| tell clusters (3+ catalog tells within ~100 words) | 2 |
| INTERCHANGEABLE units | 2 |
| VOICED failures | 2 |
| INSIGHT failures (names a thing and stops) | 2 |
| SHAPED structures | 1 |
| ADDITIVE failures (padding/restating) | 1 |

Counting: one unit scores only its worst failure; a scored cluster absorbs the 5Q failures of the sentences inside it; if more than half the units fail VOICED, score VOICED once for the piece and route to a full rewrite instead of span fixes; if more than half fail INSIGHT, score INSIGHT once for the piece and fix the argument, not the spans — a piece with no through-line cannot be patched sentence by sentence. Sum, cap at 10. **Ship at ≤2. Max two fix passes** — past that you're sanding, and sanded text is its own tell. Quoted/cited material is immune, and so are the author's signature shapes (see tells.md §protected shapes). In AUDIT mode, establish whose text it is and bind THAT voice before flagging anything — default caps on known-human text manufacture false positives.

## Layer 4 — FIT (replace toward the voice, never toward neutral)

Deletion-to-neutral is half a fix; done by everyone, it converges on the same beige. Every flagged span gets rewritten *as the bound voice would say it*:

- Find the parallel move in the voice samples — how does this author open, hedge, joke, land? Reuse their actual constructions.
- **Check your fix against the voice card before accepting it.** Your own rewrite reflexes are the model defaults this skill exists to fight — fixes arrive carrying em-dashes, triplets, and tidied grammar the author never uses.
- **Keep the author's irregularities.** Fragments, lowercase, pet words, odd punctuation, mid-sentence register drops — whatever the samples show. Clones get caught for grammatical over-standardization; the polish is the giveaway. Irregularity must come *from the samples* — never sprinkle random "humanness."
- No sample support for a fix? Flag it: "no voice precedent for this span — wrote it neutral, check it." Honest gaps beat confident drift.
- Final pass: read it aloud in the author's register. Sounds like a press release, a LinkedIn post, or a brand statement (and the author isn't a brand)? Failed — back to the worst span.
- The author test: would the author cringe? Would someone who reads them daily clock it as off? If unsure and you can ask, ask.

---

---

## What this skill does not check — say this out loud in every report

**It judges how the writing reads. It cannot judge whether the writing is true.** A draft can pass every gate here and still be wrong about the facts, cite a rule that changed last year, propose a workflow that duplicates one already running, or resolve a strategic question the team never agreed on — all in flawless voice, because well-formed prose is exactly what the model produces when it doesn't know something.

This is not a hedge; it is the observed failure mode. In `references/anti-examples.md`, AE-3's crosswalk row CW-04 passes all five audit questions — specific, committed, in-voice, directive — and it is the row a domain reviewer killed as factually wrong. Four of that document's thirteen reviewer comments were errors no reader without the file could catch.

So: **every factual claim, citation, number, date, and asserted position still needs a human who knows the material.** A clean audit means the prose is clean. It never means the document was checked. Any report that leaves that ambiguous invites a director to infer verification that didn't happen — and the more polished the draft, the more confidently it will be believed.

Watch for these specifically, and flag them for a human rather than fixing them:
- A position or recommendation the team hasn't actually decided, written in the same settled register as everything else.
- Citations more precise than the source they came from.
- Coined terms, category schemes, and acronym expansions — those belong to the team, not the drafter. Flag on first use.

---

## Refusals (what this skill will not do)

- Generate from zero specifics, or invent them. It says so instead.
- Apply a silent default voice. It asks or declares clean-generic.
- Hit a requested count with filler. Fewer real pieces, stated plainly.
- Sand past two passes. Over-cleaning is the new tell.
- Optimize for beating AI detectors. The goal is text worth reading in a real voice; if the content is empty, the fix is upstream in FEED, not in phrasing. Signs are symptoms — treating only the signs makes text harder to detect, not better.

---

## References (load on demand)

- `references/watershed-ece-voice.md` — **the house voice for ECE work product. Load first, always, for any Watershed piece.** Posture (insight not summary, advisor not observer), structure rules (BLUF, appendix), the cut-on-sight list, and the filler-vs-terms-of-art lexicon split.
- `references/exemplars.md` — **published Watershed deliverables that hit the bar.** The source of every observed rate in the house voice §5, and the positive moves worth copying. Read before auditing; the anti-examples set a floor, these set the target.
- `references/anti-examples.md` — observed failures in real Watershed work product, quoted and diagnosed. Anti-anchors for calibration; read before auditing a deck.
- `references/tells.md` — the tell catalog: vocabulary, structure, formatting, stance; cluster rules; default caps. The fast subset.
- `references/master-list.md` — the full consolidated catalog: tells superset + voice-binding rules + refusal gates + audit-instrument honesty rules + edit-scope carve-outs. Load this for any full audit.
- `references/audit-rubrics.md` — per-format gates: post/thread, long-form, docs/README, email/DM. Plus the full score sheet.
- `references/generation.md` — verbalized-sampling recipes, candidate-variation axes, persona binding.
- `references/voice-binding.md` — building a voice card from samples in 10 minutes; the replacement protocol; which irregularities to preserve.

## Quick reference

```
JOB = a specific person saying something specific. Both mandatory.
CONTRACT: bound voice + 3 specifics + one job. Missing -> ask or declare, never fake.
WATERSHED: house voice = references/watershed-ece-voice.md, always bound, read first.
FEED: specifics are load-bearing. GENERATE: 3-5 candidates, distrust the most
probable, write AS the voice. GATE: 5Q audit (interchangeable/additive/shaped/
voiced/insight) + tell CLUSTERS (1 tell = noise, 3 in 100w = rewrite). Voice sets
the caps, not a global banlist. Score before/after, ship <=2, max 2 passes.
INSIGHT: naming a trend is summary. Say why, what caused it, where it leads, or
what to do. Advisor, not observer. BLUF. Detail to the appendix.
FIT: replace flagged spans with the author's own moves. Keep their mess --
too-tidy is how clones get caught.
NEVER: default voice, invented specifics, filler to hit count, 3rd sanding pass.
Reply batches -> out of scope (they need target selection on top of this gate).
```
