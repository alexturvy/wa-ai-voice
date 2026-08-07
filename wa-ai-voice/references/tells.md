# Tell Catalog

Tells are evidence, not verdicts. **The rule is clusters: one tell is noise; three or more within ~100 words is a rewrite signal.** Single-tell zero-tolerance produces over-sanded text — which stylometry flags at up to .98 accuracy precisely for its over-standardization. Quoted/cited material you were handed is immune.

**Protected shapes:** an author's signature moves can pattern-match structural tells — a subverted-expectation punchline looks like "setup + payoff", a habitual triplet joke looks like "rule of three". The distinction: the tell RESTATES or pads (payoff explains the setup); the signature LANDS somewhere else (payoff subverts, the triplet escalates). Shapes listed in the voice card's openers/closers/humor lines are protected — never flag them. When unsure whether a shape is template or signature, check the samples: if the author does it on purpose and it works, it's voice.

Vocabulary tells age as models update — the structural and stance tells age much slower. When in doubt, weight structure over words.

## 1. Vocabulary tells (corpus-derived, rotates over time)

**General LLM lexicon:** delve, intricate/intricacies, pivotal, testament (esp. "a testament to"), underscore(s), boast(s) (for features), vibrant, crucial, comprehensive, robust, seamless(ly), leverage (verb), foster, harness, navigate/navigating (metaphorical), landscape (metaphorical), realm, tapestry, journey (metaphorical), unlock, elevate, game-changer, cutting-edge, ever-evolving, in today's fast-paced world, multifaceted, holistic, myriad, plethora, dive into / deep dive, unpack, at its core, the beauty of.

**Connective tissue:** sentence-initial "Additionally," / "Moreover," / "Furthermore," / "Indeed," — "It's worth noting that" — "It's important to note/remember" — "That said," as a reflex.

**Startup / insider fake-smart lexicon:** rails, distribution (as flex), infrastructure (as vibe), ecosystem, "the tell", "the whole game", big deal, market structure, synergy, alpha (unearned), "X is the new Y", "the use case nobody's talking about", "the scary part?", slide-title phrasing (in prose only — on an actual slide it is the format, see `audit-rubrics.md` deck rubric).

**Chatbot artifacts (instant fail, not just a tell):** "I hope this helps", "Great question", "Certainly!", "Let's explore", "In this article, we will", any leftover "As an AI".

## 2. Structural tells (slow-aging, weight these heaviest)

| Tell | Looks like | Why it happens |
|---|---|---|
| Negative parallelism | "It's not just X — it's Y" / "not only… but also" | highest-frequency rhetorical mode in aligned models |
| False contrast | two things set against each other that aren't in tension; a strawman on one side ("rather than X, this is about Y") | the form of an argument without the substance; distinct from negative parallelism, which is the shape — this is the dishonesty |
| Buried lead | the actual point arriving in paragraph four, or in the last line of a section | narrative reflex; the model builds toward a conclusion instead of leading with it |
| Evidence stacking | finding → finding → finding → conclusion | academic training; reads as rigor, costs the reader the point |
| Rule of three | adjective triplets, three-example lists, everywhere | trained cadence; humans vary count |
| False range | "from X to Y" covering non-scalar things | fake comprehensiveness |
| Setup + payoff | one-line setup, colon or dash, punchline restating setup | engagement-bait shape |
| Synonym cycling | same referent renamed each mention (the platform / the solution / the tool) | repetition penalty artifact |
| Copula avoidance | "serves as", "stands as", "acts as", "represents" for "is" | register inflation |
| Uniform sentence length | every sentence 15–25 words, same shape | low burstiness; humans spike and fragment |
| Fake question pivots | "The result?" "The best part?" "Why does this matter?" | listicle rhythm |
| Aphorism closer | "And that changes everything." / "The future is already here." | trained ending move |
| Hedging seesaw | bold claim immediately softened ("…but it's not without challenges") | alignment both-sidesing |
| Em-dash chains | 3+ em-dashes in one short paragraph | only meaningful as a cluster member |
| Colon headline | "X: Why Y Matters" | SEO-title mode |

## 3. Formatting tells

Mechanical boldface on key noun phrases; emoji as bullet points; Title Case On Every Heading; bullet lists where an argument needed prose; "In conclusion" / summary sections that restate; tables for things that aren't enumerable; horizontal rules every four lines; numbered section headers in casual contexts.

## 4. Stance tells (the deepest layer — these survive every wordlist)

- **False balance:** "While X offers benefits, it's important to consider Y" on questions that have answers.
- **Sycophancy:** agreeing with the premise before answering; mirroring the user's framing back.
- **Fake enthusiasm:** exclamation marks on routine facts; "exciting" anything.
- **No stake:** the writer risks nothing — no opinion that could be wrong, no taste, no enemy. A piece nobody could disagree with is a piece nobody needs.
- **Restating as engaging:** summarizing the source/question back in smoother words and calling it a response.
- **Comprehensiveness reflex:** covering all aspects when the reader needed one answer.

## 5. Default frequency caps

**Apply ONLY when no voice is bound.** A bound voice's observed rates override every line of this table — if the author chains em-dashes, em-dashes are their voice, not a tell.

| Pattern | Default cap |
|---|---|
| em-dash | 1 per 500 words |
| rule-of-three lists | 1 per piece |
| "not X, but Y" constructions | 1 per piece |
| bold phrases | 2 per piece |
| sentence-initial connective (Additionally/Moreover/Furthermore) | 0 |
| exclamation marks | 1 per piece |
| rhetorical question pivots | 1 per piece |
| metaphorical landscape/journey/ecosystem | 0 |

**This skill always runs on Watershed drafts, so `watershed-ece-voice.md` Part 3 governs:** em-dash and "not X but Y" are stripped every time, whatever the observed rate. The rest of this table still applies where no voice is bound.

## Maintenance

Vocabulary lists decay: models update, and mass-adopted scrub lists teach the next generation new tells. Re-derive the vocabulary section periodically against fresh corpora (over-representation vs. a human baseline), and prune anything real humans around you have started saying unironically.
