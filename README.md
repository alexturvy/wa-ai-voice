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
    audit-rubrics.md            # per-format gates + document-level pass + findings list
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

1. **~~Exemplars~~ — closed for external reports, open for internal registers.** Three published deliverables are in (`references/exemplars.md`) and the house voice Part 3 now carries observed rates for rhythm, bold, Title Case, colon labels, and triplet closers. Note what the exemplars do NOT license: em-dashes and "not X but Y" appear throughout them and are stripped anyway, because the firm content checklist says to strip them. A house rule is a decision about what to write next, not a description of the archive. Still open: internal register (memo to a colleague, working note, client email — all three exemplars are published external reports), non-ECE practice areas, and house-vs-individual register, which three deliverables from one or two authors can't settle.
2. **Vocabulary alignment with the internal coaching skill.** A complementary internal review skill covers overlapping ground under different names. Analysts should learn one name per pattern, not two. Aligning the vocabulary is the next pass; the missing pattern it identified (manager direction taken literally) is now in `watershed-ece-voice.md` Part 5.
3. **Delivery surface.** If ECE analysts are on claude.ai rather than Claude Code, a skill directory is the wrong package and "default" means Project instructions instead. The house voice, the INSIGHT gate, and the memo rubric are surface-agnostic; only the wrapper changes.
4. **Social apparatus still in the catalog.** Reply batches, thread scaffolding, @-mention mechanics, captions, trailing particles, dated slang. Cut per item, or keep where the underlying move (padding, format-announcing, coda after the punch) survives translation to a memo.
5. **This is the automatic floor, not the coaching pass.** An internal review skill already covers deliberate, phased coaching. These two are meant to sit underneath it, not replace it — which only works if the pattern names match. See item 2.
6. **Trigger collision with `deslop`.** The existing `deslop` skill fires on "remove the slop" / "does this read like AI"; `wa-ai-voice-audit` on "find the slop in this" / "audit this for slop". Either disambiguate, or fold `deslop`'s deterministic Python detector in as a pre-pass — this method has no deterministic counter, which is a real gap.
7. **Test on a live draft before firm-wide rollout.** Every calibration so far is retrospective. Run it on two or three drafts in flight with a small group, and record the accepted-versus-declined flag ratio — that ratio is the signal for whether to widen distribution. Retrospective calibration cannot surface the failure that matters most here, which is a flag an analyst rejects.
8. **Retitle the format rubrics to the firm's deliverable taxonomy.** They currently read memo / deck / long-form / docs / email. The work actually shipped is culminating reports, implementation support tools, planning tools, running agenda decks, and stakeholder facilitation decks. Needs a decision on which checks port where.
9. **Decide what to cut from the general catalog.** `master-list.md` still carries rules built for social posting — reply batches, thread scaffolding, caption grammar, trailing particles, punchline placement, profanity retention. Some encode a move that survives translation to a memo; most do not, and at least two contradict the house register outright.
10. **Confirm the exemplar permissions.** `exemplars.md` names client engagements and quotes their deliverables at length. Public availability of those reports and permission for this reuse are different questions.

## Maintaining this repo

If you're editing the skills rather than just using them, symlink instead of copying so changes are live without reinstalling:

```bash
ln -sfn "$PWD/wa-ai-voice" ~/.claude/skills/wa-ai-voice
ln -sfn "$PWD/wa-ai-voice-audit" ~/.claude/skills/wa-ai-voice-audit
```

`install.sh` replaces those symlinks with copies, so don't run it on a machine you develop on.
