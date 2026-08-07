# wa-ai-voice

The writing standard for Watershed work product, as two skills.

- **`wa-ai-voice`** — the default. A four-layer protocol (FEED / GENERATE / GATE / FIT), a five-question audit, a tell catalog, and the ECE house voice spec. It applies on its own whenever an analyst drafts a deliverable — no one has to remember to invoke it. That's the point: directors shouldn't have to give the same feedback twice.
- **`wa-ai-voice-audit`** — the coaching pass. Point it at a file or a pasted draft; it reports every failing line with the reason and a suggested swap, and applies only the fixes you approve. One fix pass, two at most. This is the one you invoke deliberately, for reconciling feedback or teaching the standard.

The core bet: banning words doesn't fix AI-sounding text, it produces a new recognizable style. So the skill judges against a bound voice instead of a global banlist, and flags repeating patterns rather than single words.

Roughly a 70/30 split — about 70% general "not shitty AI writing," 30% Watershed posture. The 70% is the method; the 30% lives in `watershed-ece-voice.md` and in the INSIGHT gate.

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

## Coverage — the eight recurring failure modes

| Failure mode | Where it's caught | Status |
|---|---|---|
| Vague, fluffy, filler language | `watershed-ece-voice.md` §3 fluff test + §4 filler lexicon; INTERCHANGEABLE | covered |
| Burying the lead | `tells.md` §2 buried lead; memo rubric BLUF; house voice §2 | added |
| Evidence → evidence → conclusion | `tells.md` §2 evidence stacking; memo rubric claim-then-evidence | added |
| "It's not X, it's Y" | `tells.md` §2 negative parallelism | already in catalog |
| False contrasts | `tells.md` §2 false contrast — kept separate from parallelism, since the form can be fine and the dishonesty is the problem | added |
| Forced tripartite structure | `tells.md` §2 rule of three; SHAPED; memo rubric section-count rule | already in catalog |
| Jargon | `watershed-ece-voice.md` §4, split filler vs. terms of art | added |
| Detectable as AI-written | the whole tell catalog + cluster rule | covered |

And the 30%:

| Watershed posture | Where it lives |
|---|---|
| Insight, not summary | **INSIGHT**, the fifth audit question — a unit that names a thing and stops fails; it must say why it matters, what caused it, where it leads, or what to do |
| Influencer / advisor, not observer | house voice §1; the researcher reflex is named as the most common way this fails |
| Precision of language | house voice §1 + the filler lexicon; INTERCHANGEABLE |
| Audience awareness | promoted from prose to a required input — the contract's "one job," now mandatory for work product and a checked item in the memo rubric |
| Detail belongs in an appendix | house voice §2; memo rubric, with the density rule overridden so the thinner body isn't flagged |

Three failures derived from the observed corpus and adopted into the rubric (`anti-examples.md` §Derived rules): specifics deleted by the polishing pass; comprehensiveness used to avoid committing; and **the apparatus tell** — filled matrices, ID schemes, pinpoint citations from approximate sources, caveat appendices. The apparatus tell is invisible to the unit-by-unit audit, so it lives in the new document-level pass in `audit-rubrics.md`.

**Scope boundary, stated in every report:** the skill judges how a draft reads, never whether it is true. AE-3 passes the audit and a domain reviewer found four factual errors in it. A clean audit means clean prose, not a checked document.

**No numeric score, deliberately.** An earlier version summed weighted categories to a 0–10 scale with a "ship at ≤2" gate. That was this skill's own apparatus tell — its `master-list.md` PART D holds that absolute scores don't replicate and prescribes counted failures instead. It now reports findings by category and one of three verdicts: ship, fix these, or rewrite the argument.

## Open items

1. **~~Exemplars~~ — closed for external reports, open for internal registers.** Three published deliverables are in (`references/exemplars.md`) and the house voice §5 now carries observed rates for rhythm, bold, Title Case, colon labels, and triplet closers. Note what the exemplars do NOT license: em-dashes and "not X but Y" appear throughout them and are stripped anyway, because the firm content checklist says to strip them. A house rule is a decision about what to write next, not a description of the archive. Still open: internal register (memo to a colleague, working note, client email — all three exemplars are published external reports), non-ECE practice areas, and house-vs-individual register, which three deliverables from one or two authors can't settle.
2. **~~Standing director feedback~~ — found, not yet integrated.** It exists in the `watershed-draft-review` skill (`references/failure-modes.md`): five recurring patterns drawn from a knowledge-extraction session with several directors, plus audience archetypes, deliverable types, the content checklist, and exemplars across five deliverable types. Four of its five patterns map onto rules already here under different names; one — **manager direction taken literally**, language that reads as captured rather than authored — is absent from this skill entirely. Next pass: align the vocabulary so analysts learn one name per pattern, rename the format rubrics to the firm's actual deliverable taxonomy, and add the missing pattern. **That repo is private and contains director names and real client deliverables; this one is public. Pattern names can cross, sourced content cannot.**
3. **Delivery surface.** If ECE analysts are on claude.ai rather than Claude Code, a skill directory is the wrong package and "default" means Project instructions instead. The house voice, the INSIGHT gate, and the memo rubric are surface-agnostic; only the wrapper changes.
4. **Social apparatus still in the catalog.** Reply batches, thread scaffolding, @-mention mechanics, captions, trailing particles, dated slang. Cut per item, or keep where the underlying move (padding, format-announcing, coda after the punch) survives translation to a memo.
5. **The two skills are complementary by design.** `watershed-draft-review` is the invoked Socratic coaching pass (phased, teaches strategic judgment); `wa-ai-voice` is the automatic floor. Keep them separate — but keep the pattern names identical, or an analyst learns "INSIGHT failure" from one and "stating facts without insight" from the other.
6. **Trigger collision with `deslop`.** The existing `deslop` skill fires on "remove the slop" / "does this read like AI"; `wa-ai-voice-audit` on "find the slop in this" / "audit this for slop". Either disambiguate, or fold `deslop`'s deterministic Python detector in as a pre-pass — this method has no deterministic counter, which is a real gap.
7. **Test on a live draft.** Every calibration so far is retrospective. The next real check is running the audit on something being written now, before it goes out.

## Maintaining this repo

If you're editing the skills rather than just using them, symlink instead of copying so changes are live without reinstalling:

```bash
ln -sfn "$PWD/wa-ai-voice" ~/.claude/skills/wa-ai-voice
ln -sfn "$PWD/wa-ai-voice-audit" ~/.claude/skills/wa-ai-voice-audit
```

`install.sh` replaces those symlinks with copies, so don't run it on a machine you develop on.
