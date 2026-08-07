# Generation Protocol — Escaping the Mode

The first completion is the most typical completion. Mode collapse is a data-level property of aligned models (typicality bias in preference data), so no amount of "write better" fixes it; you escape it structurally, by generating a distribution and choosing from it. Verbalized sampling is the only prompt-level fix with verified results (1.6–2.1× diversity, no accuracy loss).

## Verbalized sampling (the core move)

Instead of asking for the thing, ask for the distribution:

```
Generate 5 [openings / posts / angles / subject lines] for [task].
For each, estimate the probability that a generic AI assistant
would produce it (high / medium / low).
```

Then: **discard the high-probability candidates.** They are the centroid — competent, typical, slop. Develop the best low-probability candidate that still does the job. The probability estimate is the point: forcing the model to verbalize typicality surfaces the mode so you can avoid it.

Agent self-use (no user in the loop): run the same move internally. Draft 3–5 candidates, mark which one a default assistant would write, kill it, develop the best survivor.

## Variation axes (vary the move, not the synonyms)

Five rewordings of one idea = one candidate. Real variants differ on at least one axis:

| Axis | Options |
|---|---|
| Opening move | a moment · a number · a claim · a question · a dry joke · an image |
| Altitude | street-level detail ↔ mechanism ↔ principle |
| Stance | confess · accuse · admire · doubt · deadpan |
| Shape | one-liner · fragment run · single paragraph · dialogue · list (only if the author lists) |
| Distance | first-person scene ↔ observer ↔ aphorism (use the author's habitual distance) |

## Persona binding at generation

Write AS the bound voice from the first token — never draft neutral and "voice it up" later. A persona prompt moved a frontier model from 36% to 73% judged-human in Turing tests; the persona is doing real distributional work, not decoration.

- Keep 2–3 of the author's actual lines visible in working context while drafting.
- Pre-load the author's constructions: their openers, their hedges, their punctuation. (Voice card — see voice-binding.md.)
- If candidates keep drifting back to assistant-register, the persona context is too thin: add samples, don't add adjectives ("be edgier" does nothing; a sample of the author being edgy does).

## Length discipline

- Draft to the natural length of the thought, then cut ~20%. The cut pass removes the padding the model added by reflex.
- Never stretch toward a word count. If the user requested length the content can't fill, say so — padding is ADDITIVE slop manufactured to order.
- For batches: fewer real pieces beats the requested count. State the shortfall plainly.
