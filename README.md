# wa-ai-voice

The writing standard for Watershed work product, as two skills.

- **`wa-ai-voice`** — the default. A four-layer protocol (FEED / GENERATE / GATE / FIT), a five-question audit, a tell catalog, and the ECE house voice spec. It applies on its own whenever an analyst drafts a deliverable — no one has to remember to invoke it. That's the point: directors shouldn't have to give the same feedback twice.
- **`wa-ai-voice-audit`** — the coaching pass. Point it at a file or a pasted draft; it reports every failing line with the reason and a suggested swap, and applies only the fixes you approve. One fix pass, two at most. This is the one you invoke deliberately, for reconciling feedback or teaching the standard.

The core bet: banning words doesn't fix AI-sounding text, it produces a new recognizable style. So the skill judges against a bound voice instead of a global banlist, and flags repeating patterns rather than single words.

## Install

Requires [Claude Code](https://claude.com/claude-code). Clone the repo and run the installer:

```bash
git clone https://github.com/alexturvy/wa-ai-voice.git
cd wa-ai-voice
./install.sh
```

Restart Claude Code. To update later: `git pull && ./install.sh`. To remove: `./install.sh --uninstall`.

The installer copies both skills into `~/.claude/skills/` (override with `CLAUDE_SKILLS_DIR`). Nothing else on your machine is touched, and no data leaves it — the skills are plain markdown that Claude reads.

### Checking it worked

Open Claude Code and ask it to draft or tighten any Watershed deliverable. `wa-ai-voice` should apply on its own — you'll see it lead with the bottom line, push for a named reader, and flag filler. To run the audit explicitly on an existing file:

```
/wa-ai-voice-audit path/to/draft.md
```

### A note for anyone reading the audit output

The skill judges **how a draft reads, not whether it is true.** It cannot tell you that a citation is stale, that a proposed process duplicates one that already exists, or that the draft has quietly taken a position the team never agreed to. A clean audit means clean prose. Every fact, number, citation, and asserted position still needs someone who knows the file.

## Layout

```
wa-ai-voice/
  SKILL.md                      # the method: FEED / GENERATE / GATE / FIT + the 5-question audit
  references/
    watershed-ece-voice.md      # THE HOUSE VOICE — posture, structure, lexicon split
    tells.md                    # fast tell catalog + default caps
    master-list.md              # full catalog: tells, binding, gates, audit honesty, edit scope
    exemplars.md                # published deliverables that hit the bar — source of the observed rates
    anti-examples.md            # observed failures, quoted and diagnosed (AE-1..AE-3)
    audience-archetypes.md      # the five readers: what lands, what backfires, framing density
    audit-rubrics.md            # per-deliverable gates (the five types) + document-level pass
    generation.md               # candidate generation, escaping the mode
    voice-binding.md            # voice cards from samples; the replacement protocol
wa-ai-voice-audit/
  SKILL.md                      # the audit-and-fix workflow
install.sh                      # copies both skills into ~/.claude/skills/
```

## What it covers

The standard is fourteen named failures, all in `references/watershed-ece-voice.md`, each carrying a real before/after pair drawn from six documents: three drafts that failed review, three published deliverables.

**The eight general AI-writing failures:** vague/fluffy/filler language · burying the lead · evidence → evidence → conclusion structure · "it's not X, it's Y" · false contrasts · forced tripartite structure · jargon · detectable as AI-written.

**The six Watershed posture items:** insight not summary · influencer not researcher, advisor not casual observer · precision of language · no clear call to action · audience awareness · most supporting detail belongs in an appendix.

Analysts report failures by those names. The audit machinery underneath (a five-question pass, a tell catalog, a document-level structural check) lives in `audit-rubrics.md` and nobody has to learn it.

Three additions came out of the corpus rather than the spec, and they are the ones worth knowing about. **Formalizing deletes specifics** — the unpolished internal notes in one failing deck were denser than the polished client slides that replaced them, so the fix is to diff the deliverable against the notes it came from. **Comprehensiveness is how a draft avoids committing** — volume moves inversely to willingness to choose. And **the apparatus tell**: filled matrices, ID schemes nobody uses, citations more precise than their sources, caveat appendices that withdraw what the body asserts. That last one is invisible unit-by-unit, so it lives in a document-level pass.

**Scope boundary, stated in every report:** the skill judges how a draft reads, never whether it is true. One of the failing drafts passes the audit cleanly and a domain reviewer found four factual errors in it. A clean audit means clean prose, not a checked document.

**No numeric score, deliberately.** An earlier version summed weighted categories to a 0–10 scale with a "ship at ≤2" gate. Absolute scores don't replicate, so it now reports findings by name plus one of three verdicts: ship, fix these, or rewrite the argument.

## Open items

1. **Registers the corpus doesn't cover.** All three exemplars are published external reports, so the observed rates in Part 3 describe that register and are explicitly scoped to it. Still unobserved: internal register (memo to a colleague, working note, client email), non-ECE practice areas, and house-versus-individual voice, which three deliverables by one or two authors cannot settle. Note what the exemplars do *not* license: em-dashes and "not X but Y" appear throughout them and are stripped anyway, because the content checklist says to strip them. A house rule is a decision about what to write next, not a description of the archive.
2. **Delivery surface.** If analysts draft on claude.ai rather than in Claude Code, a skill directory is the wrong package and "default" means Project instructions instead. The standard, the pairs, the archetypes, and the rubrics are all surface-agnostic; only the wrapper changes. This determines whether the automatic-floor premise holds at all, so it is worth settling before wide distribution.
3. **This is the floor, not the coaching pass.** An internal review skill already does deliberate, phased coaching. These two sit underneath it. The vocabulary is now aligned — failures are reported by the fourteen names, which are the spec's names and mostly the ones directors already use.
4. **Trigger collision with `deslop`.** A `deslop` skill installed locally fires on "remove the slop" and "does this read like AI"; `wa-ai-voice-audit` fires on "find the slop in this" and "audit this for slop". Either disambiguate the descriptions, or fold `deslop`'s deterministic detector in as a pre-pass — this method has no deterministic counter, which is a real gap.
5. **Test on live drafts before firm-wide rollout.** Every calibration so far is retrospective. Run it on two or three drafts in flight with a small group and record the accepted-versus-declined flag ratio; that ratio is the signal for whether to widen distribution. Retrospective calibration cannot surface the failure that matters most here, which is a flag an analyst rejects.
6. **One failure has no pair yet.** Manager direction taken literally — language that reads as captured rather than authored. It needs a draft and the director rewrite of it, which is the same paired before/after the spec asked for.
7. **The lexicon decays.** Vocabulary tells age as models update; the structural and stance failures age far slower. The filler list needs periodic re-derivation, and nobody owns that yet.

## Maintaining this repo

If you're editing the skills rather than just using them, symlink instead of copying so changes are live without reinstalling:

```bash
ln -sfn "$PWD/wa-ai-voice" ~/.claude/skills/wa-ai-voice
ln -sfn "$PWD/wa-ai-voice-audit" ~/.claude/skills/wa-ai-voice-audit
```

`install.sh` replaces those symlinks with copies, so don't run it on a machine you develop on.
