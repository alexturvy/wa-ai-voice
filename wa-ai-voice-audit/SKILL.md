---
name: wa-ai-voice-audit
description: Audit a file or draft for AI slop and off-voice lines against the author's bound voice, report findings with in-voice swaps, then apply approved fixes. Use when the user says "voice check", "/wa-ai-voice-audit [file]", "find the slop in this", "audit this for slop", or wants a memo, deck, article, page, or draft cleaned to sound like them or like the firm. Wraps the wa-ai-voice skill with a voice binding and a fix workflow. NOT a detector-evasion tool, and NOT for text with no voice to bind.
---

# wa-ai-voice-audit

Audit-and-fix workflow for any voice-bearing file. The argument is a file path or a pasted draft. If neither is given, ask which file.

## Setup (once)

**Watershed work product is already bound: `../wa-ai-voice/references/watershed-ece-voice.md`** (installed: `~/.claude/skills/wa-ai-voice/references/watershed-ece-voice.md`). Read it in full before flagging anything. **Its §5 carries observed house rates that override `tells.md` §5 entirely — do not apply the default caps to Watershed work.** Triplet closers, heavy bold, Title Case heads, and colon labels are house voice, not tells; applying the defaults flags the opening sentence of the strongest deliverable in the corpus.

**Two patterns are always stripped: em-dashes and "not X but Y."** The firm content checklist names both as LLM tells to remove. They appear in published human-written Watershed reports; that does not create an exemption.

For anything else, point step 1 at the author's voice. In priority order:

1. A voice file the author maintains (put its path in step 1 below).
2. 5+ real writing samples, from which you build a voice card on the fly (`wa-ai-voice/references/voice-binding.md`).
3. A named register the author states.

None of the three available: stop and say so. Auditing against a default banlist manufactures false positives on real human writing. The wa-ai-voice contract governs here.

## Steps (follow exactly)

1. **Load the wa-ai-voice skill in AUDIT mode** and its full catalog at `../wa-ai-voice/references/master-list.md` (installed: `~/.claude/skills/wa-ai-voice/references/master-list.md`). Before flagging anything, read the author's voice file in full (the path you set in Setup). That file sets the caps, not any default banlist.

   **If this session (or any agent in it) wrote or edited the target text, do not audit it yourself.** Spawn a fresh-context subagent that never saw the drafting, hand it this skill plus the voice file, and relay its findings. The author of a draft is the worst judge of it.

2. **Read the whole piece twice.**
   - Pass one: sweep for catalog tells. Clusters of 3+ within ~100 words count; single hits are noise.
   - Pass two: read as a stranger hearing it out loud. This is where the real catches are: robot words, padding that restates a headline or kick, lines that contradict each other, logic that doesn't hold, terminology that drifts between sections, triplets-for-rhythm, anything the author wouldn't actually say. A clean word-list pass is not a clean audit.

3. **Name the format and load its rubric.** Say which it is (client memo/brief, deck, long-form, docs, email) and run that section of `audit-rubrics.md` after the five-question pass. Default to the client-memo rubric for Watershed work product; ask if it is genuinely ambiguous. Skipping this silently drops the memo checks that carry most of the Watershed standard: bottom line first, named reader, explicit ask, strict INSIGHT. Getting it wrong is worse than skipping it — the long-form density rule manufactures false positives on a memo, because appendix discipline thins the body on purpose.

4. **You did not write this and you don't get credit for liking it.** If a prior session or agent produced it, that makes you MORE suspicious, not less. Fresh judgment is the whole point of this skill.

5. **Run the document-level pass before you report.** The five gates work unit by unit and will clear a document whose failure is structural — see `wa-ai-voice/references/anti-examples.md` AE-3, where every row passes and the document as a whole is performing rigor it doesn't have. The four checks in `audit-rubrics.md` under "Document-level pass" take two minutes and catch what row-by-row cannot.

6. **Report before touching anything:**
   - The counted findings by category (wa-ai-voice rubric). No numeric score — the arithmetic was removed deliberately; report what you found and the verdict.
   - The verdict: **ship**, **fix these**, or **rewrite the argument**.
   - Every flagged line with its location (slide/section/line), why it fails, and a swap written in the author's voice. Check each swap against the voice file: keep their irregularities, fix toward their words, never toward neutral.
   - What's clean and must not be touched (their numbers, refrains, named things, signature moves).

7. **On a "rewrite the argument" verdict, do not edit spans.** That verdict means a piece-level failure fired and sentence surgery cannot reach it. Report the piece-level finding, say what the rewrite has to establish (the position, the so-what, the reader), and hand it back for a fresh DRAFT-mode pass. A rewrite is not a fix pass and does not count against the two-pass limit.

8. **Otherwise, wait for the go, then apply exact-string edits only from the approved list.** One fix pass, two max. Do not polish anything unflagged, do not sand. Report the remaining findings after. If the user says "just fix it" or "no need to ask" up front, skip the gate and apply, but still show the full before/after findings.

9. **Close every report with the scope line, verbatim in substance:** *this audit judged how the draft reads, not whether it is true — every factual claim, citation, number, and asserted position still needs someone who knows the material.* Then list anything you noticed that needs a domain check: positions the team may not have decided, citations that look more precise than their source, coined terms and categories, numbers with no stated origin. Never let a clean audit imply the document was verified. See `wa-ai-voice/SKILL.md` §"What this skill does not check."

10. **Zero findings is a claim, not a shrug.** If nothing fails, say what was checked and where problems would hide anyway. "It's clean" with no evidence means the audit didn't happen.

## Handoff variant

If the user says to hand the fixes to another agent instead of applying them: write a CHANGE file next to the target with exact OLD/NEW strings (preserve HTML entities if the target is HTML), the do-not-touch list, a grep verification step, and the line "this is the single fix pass, do not polish further".

## Related

- `wa-ai-voice`: the underlying method and tell catalog.
