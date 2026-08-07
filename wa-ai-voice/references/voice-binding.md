# Voice Binding — the FIT layer's source of truth

Slop removal without a bound voice produces clean-generic: grammatical, inoffensive, and identical to every other agent's clean-generic. That convergence IS meta-slop. So binding is mandatory-or-explicit: bind a voice, or tell the user you're shipping clean-generic and what it costs.

## Binding sources, in priority order

1. **Explicit voice spec** — a voice.md, brand guide, or style doc the user maintains. Use as written; samples beat rules when they conflict.
2. **5+ raw samples** — build a voice card (below). Ask for samples across registers if available (a strong piece, a casual reply, something earnest).
3. **A named register** — "tired senior engineer in Slack", "state chief of staff writing to a superintendent". Thinner than samples; say so, and upgrade to samples when the user can provide them.
4. **Nothing** → STOP. Say: "No voice bound — I can write this clean-generic (reads fine, sounds like no one) or you give me 5+ samples / name a register." Never silently default. Widely installed humanizer tools fall back to a single default 'natural, opinionated' voice, which means thousands of writers now share it. Don't join them.

## The voice card (build in ~10 minutes from samples)

Fill from observation, not inference. Quote the samples.

```
VOICE CARD — [author]
rhythm:        [sentence length distribution — does it spike? fragment? run-on?]
case/punct:    [lowercase? em-dashes? ellipses? exclamation rate? emoji?]
lexicon:       [pet words/phrases they actually repeat | words they'd never use]
openers:       [how do pieces start — quote 3 real openers]
closers:       [how do pieces end — recap? punchline? trail off?]
humor:         [deadpan / absurd / self-deprecating / none — quote one joke]
register range:[how formal does it get, how loose, where's the default]
stance:        [opinionated? hedging? earnest about what, never earnest about what?]
irregularities:[the "errors" to KEEP — fragments, run-ons, lowercase i, comma splices]
caps override: [observed rates that override default tell caps — e.g. "em-dashes: 3/100w, keep"]
```

The `irregularities` and `caps override` lines are the anti-tidiness defense: stylometry separates clones from humans at up to .98 accuracy via grammatical over-standardization. The mess is load-bearing. Preserve it at the author's observed rate — never add mess the samples don't show, and never normalize mess they do.

## The replacement protocol (how FIT fixes a flagged span)

1. Name the failure (which tell cluster / which audit question).
2. Find the parallel move in the samples: how does THIS author open, hedge, emphasize, joke, land? Steal their construction, not their words.
3. Rewrite the span using that construction, keeping the span's information.
4. **Check the fix against the card before accepting it.** The rewriter's own reflexes are the same model defaults this skill fights — fixes arrive with em-dashes, triplets, and tidied grammar the author doesn't use. Every fix passes the caps-override line or it isn't a fix.
5. No sample precedent for this kind of move? Write it plain and flag it: "no voice precedent — wrote neutral, check this line." An honest gap beats confident drift; drift compounds.
6. Re-read the surrounding paragraph aloud — a perfectly voiced sentence in a beige paragraph still reads as paste.

## Voice drift checks (for long pieces and batches)

- Every ~500 words, re-read one random sample, then the latest output. Register drift back toward assistant-voice is gradual and invisible from inside.
- Batch test: shuffle your outputs with 2 real samples. If the real ones are instantly identifiable, the binding is failing.
- The author test, final gate: would the author cringe? Would a daily reader clock it? If you can ask the author, ask — calibration data from the user ("this line, never") goes back into the card.
