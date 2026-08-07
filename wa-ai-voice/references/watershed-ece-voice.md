# Watershed ECE — the writing standard

The bound voice for ECE work product. This file satisfies binding source #1 (explicit voice spec), so the no-voice hard stop does not fire on Watershed work.

It is the floor, not a ceiling: an analyst with a stronger instinct for a given piece is not overruled by it.

**Declining a flag.** Any flag can be declined. Record a one-line reason in the report's "left unfixed and why" list and move on. No escalation, no argument. The same rule declined repeatedly by different analysts is the signal that the rule is wrong, not that the analysts are; that is the intended path for this file to change. A standard nobody can dispute gets routed around instead of followed.

---

## How to read this

Fourteen named failures. Eight are general AI-writing problems; six are Watershed posture. Each carries a **pair** — a real span that fails, and a real span from published Watershed work that does the same job right. The pairs come from six documents: three drafts that failed review, three published deliverables. Where a description and a pair disagree, believe the pair.

The audit machinery (INTERCHANGEABLE, ADDITIVE, SHAPED, VOICED, INSIGHT) sits in `audit-rubrics.md` and does not need to be learned. **Report failures by the names below.** Directors already use most of them.

---

# Part 1 — The eight (general AI-writing failures)

## 1. Vague, fluffy, filler language

Sentences shaped like claims that assert nothing. Test: could anyone disagree with it? If not, cut it.

> **Fails:** "A stronger start for every child." · "This work requires thoughtful coordination across stakeholders."
> **Works:** "Texas loses more than $9 billion annually from its economy due to breakdowns in child care."

The failing lines are warm, quotable, and true of every early childhood program that has ever existed. Clever is not a defense: a standalone-clever line that doesn't need this specific context is filler dressed as wit.

## 2. Burying the lead

The point arrives in paragraph four, or mid-sentence, or at the end of a section. Bottom line up front, ahead of context, method, and scene-setting.

> **Fails:** A 60-word sentence opening "[The agency] is developing a transition and support plan that ensures…" The load-bearing facts (programs will drop ratings; there is a 2–3 year hold harmless) arrive mid-sentence, behind a subject that is the plan rather than the consequence.
> **Works:** Every recommendation section in the TN plan opens on an italicized thesis before any supporting material, and closes on a short bolded restatement of the ask. BLUF at section level, not just document level.

On a deck this is the slide title. "Enrollment Trends" buries; "This is an economic problem. Texas loses more than $9 billion annually" does not. Read the titles in sequence: they should be the memo.

## 3. Evidence → evidence → evidence → conclusion

Academic training that does not match how the reader reads. Invert it: claim, then the evidence that carries it. Any section that stacks findings and resolves at the end is inverted. Flag the section, not the sentences.

> **Fails:** A synthesis memo that reports what a room said and never states what the firm concludes from it. "Participants did not identify a problem with initial verification" appears twice.
> **Works:** "**Streamlined Operations and Efficiency:** Consolidating programs under a single agency reduces fragmentation… / **Current State:** Tennessee currently has two teams conducting child care monitoring, one at TDOE and one at TDHS."

**That second pair is the house pattern: claim → `Current State:` receipt.** Five benefits, five receipts, every one naming a Tennessee agency or number. Abstraction is not the failure; unanchored abstraction is. Cash out every general claim in the next sentence.

## 4. "It's not X, it's Y"

Defining the positive by negating something nobody claimed.

> **Fails:** "The group focused on making the system more coherent, not lowering expectations for quality."
> **Works:** Say what it is.

Always stripped. See Part 3.

## 5. False contrasts

Distinct from #4: the form may be fine, the dishonesty is the problem. Two things set against each other that are not actually in tension, or a strawman on one side. Usually arrives as "rather than," "instead of," "the question isn't A but B."

> **Fails:** "This isn't about compliance, it's about quality," where the requirement in question is a compliance requirement and nobody argued otherwise.
> **Works:** Name the real tension with both sides stated fairly, or drop the construction. The TN plan gives benefits **and** challenges for all three governance options, including the one it recommends.

## 6. Forced tripartite structure

Three findings, three recommendations, three anything, when the content is not three parts. The most visible tell in this genre.

> **Fails:** Eight benefit bullets in two columns of four, every one the same grammatical shape and length. The shape was chosen before the content, then the content cut to fit. Also: "strengthen adult–child interactions, improve CLASS scores, and regain higher rating levels over time."
> **Works:** Five parallel labels (Ineffective Data, Inconsistent Experiences, Overburdened Families, Unsupported Employers, Broken Child Care Market), each with a real sentence of content beneath it.

**The number three is not the failure. Three slots carrying two slots' worth of content is.** If the piece is two things, it has two sections. Count the content, not the shape.

## 7. Jargon

See Part 4 for the lists. The distinction matters more than the list: filler jargon hides a missing noun; terms of art carry meaning the reader would lose in plain language.

> **Fails:** "Alignment across system actors." · "Actionable feedback for educators."
> **Works:** "TDOE oversees preschool in public and non-public schools, while TDHS supports licensed child care providers who administer preschool programs."

## 8. Detectable as AI-written

Two layers. The surface layer is punctuation and construction (Part 3). The deeper layer is **the apparatus tell**: signals of rigor substituting for rigor.

> **Fails:** A regulatory draft with ID schemes nobody will say out loud, a matrix with every cell filled to the same length, citations more precise than the sources they came from, and a caveat appendix withdrawing what the body asserts. Every signal of thoroughness present, none earned.
> **Works:** Four hero numbers across the top of the TN plan. Three are `-$2.6B`, `60%`, `43rd`. The fourth is `?` — "Tennessee has no consistent way of evaluating or tracking kindergarten readiness."

**The gap gets the same visual weight as the $2.6 billion, and becomes an argument for the recommendation.** Promote the unknown; don't bury it. The whole-document version of this check lives in `audit-rubrics.md` under "Document-level pass."

---

# Part 2 — The six (Watershed posture)

## 9. Insight, not summary

Naming a trend is not analysis. A unit that identifies something and stops is summary, and summary is the default failure of a good analyst writing quickly. To clear the bar a claim must do at least one of these, explicitly, in the text: say whether it is good or bad and for whom · say what is causing it · say where it leads · say what the reader should do about it.

> **Fails:** "Enrollment in state-funded pre-K has flattened in 14 states."
> **Works:** "This is an economic problem. Texas loses more than $9 billion annually from its economy due to breakdowns in child care."
> **Works:** Challenge → System Fragmentation (the cause) → Ideal State (where it leads) → Recommendations (what to do), as a deck's table of contents. One slide states the hinge outright: "This is a result of system fragmentation."

**On "elevated insight."** The term gets used at the firm and is hard to define in words. These pairs are the definition. The move is always the same: the fact is not the finding, the finding is what the fact forces. Read forward when judging this — a summary sentence is fine if the next sentence supplies the so-what.

## 10. Influencer, not researcher. Advisor, not casual observer.

We have a point of view and the reader is paying for it. A piece that could have been written by a neutral party with no stake in what happens next has failed, however well sourced. The researcher reflex (present the evidence, let the reader draw the conclusion) is the most common way this fails, and it reads as rigor.

> **Fails:** Ten items labeled "Open," none ranked. A list of ten open questions with no ordering hands the prioritization back to the client, which is the work they hired out.
> **Works:** Three governance options in a table with benefits and challenges for each, then: "After careful evaluation, this report recommends unifying early care and education programs under TDOE."

Committed verbs are the tell: *must*, *is essential*, *should at a minimum*, *relentlessly*. Present options, then pick, and name the cost of the pick.

## 11. Precision of language

Say the specific thing. Every abstraction is a place where the writer stopped short of the claim they actually meant. If a sentence would survive swapping the state, the program, or the year, it is not yet a sentence about anything.

> **Fails:** "The needed changes are primarily in evidence, verification, communication, and support." Four nouns, no referents. What is a change "in support"?
> **Works:** "Achieving this vision at scale will take an estimated $580 million in new local funding each year, a bold and ambitious target."

State the number, then name it ambitious rather than softening it.

## 12. No clear call to action

The deliverable describes, analyzes, or summarizes but never advances the client to a decision. Sometimes the analysis is strong and stops short of a recommendation; sometimes the recommendation is implied but never stated; sometimes it exists but is buried or split across several weak asks. A recommendation memo that never says what it wants is a summary with a header.

> **Fails:** An action log that assigns five actions, names no owner for any decision, and gives not one of them a due date.
> **Works:** "To transform Texas's broken early childhood system, Texas leaders should at a minimum:" followed by four verb-first recommendations — *Unify… Pilot… Require… Collect, report, and use…*

Ask of any draft: what is this trying to get the client to do, decide, or commit to? Is it visible? Is it positioned to land?

## 13. Audience awareness

Not a vibe. A required input, and it is answerable.

Before drafting, name **which reader** and **what they should know, feel, or do after**. Watershed work generally lands with one of five: *governor's office / chief of staff · state agency director or commissioner · implementation lead and operational staff · advocacy coalition or partner organization · funder*. The same finding written for an agency lead and for a funder is two different documents.

> **Fails:** A deck section addressed to "providers and families" generally, promising benefits neither audience could act on.
> **Works:** A plan that separates business leaders, school system leadership, local government, and philanthropic leaders, and says what each should do differently.

If the draft cannot name its reader, that is the first finding. **What each reader cares about, is anxious about, and how framing lands or backfires for each: `audience-archetypes.md`.** Two gradients matter most — how much framing a reader needs, and how much edge the work can carry. Both shift by archetype, and getting them wrong is a finding even when the prose is clean.

## 14. Most supporting detail belongs in an appendix

The body carries the argument. Methodology, full data tables, interview rosters, and the long version of anything go behind it. Detail in the body the argument does not need is padding with a citation attached.

> **Fails:** A full compliance crosswalk, an evidence-acceptance framework, and a multi-part amendment package, all in the body.
> **Works:** The TN plan routes the glossary, current-state governance detail, state-unification comparisons, and the data inventory to appendices. A body paragraph that would survive being moved to an appendix belongs in the appendix.

This thins the body on purpose. Do not then flag the body for low density.

---

# Part 3 — Punctuation and construction

## Always strip

| Pattern | Rule |
|---|---|
| **em-dash** | Strip. Comma, colon, period, or parentheses instead. |
| **"not X but Y" / "not only… but also" / "it's not X, it's Y"** | Strip. State what it is. |

Watershed's content checklist names both as obvious LLM writing choices to remove. That is a stated house rule and it governs everything this skill touches. No mode, no exception, no judgment call. Every instance is its own finding: these are exempt from the cluster rule, and no observed rate overrides them.

Both appear throughout the published exemplars, written by humans. That does not create a carve-out. A house rule is a decision about what to write next, not a description of the archive.

## Protected — house voice, do not flag

Observed in the three published deliverables. These override the defaults in `tells.md` §5.

| Pattern | Default | Observed | Verdict |
|---|---|---|---|
| rule of three | 1 / piece | pervasive and deliberate. **"children, families, and providers" is a house refrain** across all three | protected, never flag |
| triplet closer | flagged as aphorism closer | standard in executive summaries | in voice |
| bold phrases | 2 / piece | heavy, on the claim sentence and on every colon label | in voice |
| colon-label bullets | — | house standard: **`Bold Label:` then the content** | in voice |
| exclamation marks | 1 / piece | zero observed in ~90 pages | keep at 0 |
| inline hyperlinks | — | dense; the link goes **on the number** | in voice, expected on any statistic |
| sentence length | — | long and even, ~20–35 words, few fragments | do not flag uniformity |
| Title Case heads | flagged | house standard for major heads; colon-scoped in decks | in voice |

**Scope: external reports and decks only.** All three exemplars are published external reports, so these rates describe that register and nothing else. For internal registers (a memo to a colleague, a working note, a client email) the `tells.md` defaults and the email rubric govern instead. Do not protect 20–35 word formal sentences in a three-line email because a 50-page report used them.

**Where a row gives an adjective instead of a count** ("heavy", "pervasive", "dense") the pattern is licensed but the `tells.md` default remains the ceiling. An adjective cannot be exceeded, which would make over-bolding unfalsifiable. Replace these with counts when someone has time to do the counting.

---

# Part 4 — Lexicon

**Filler. Cut these, or replace with the specific thing.** The words that let a sentence sound finished before the thinking is:

actionable insights · double-click · north star · moving the needle · at scale (unqualified) · unlock · leverage (verb) · landscape (metaphorical) · ecosystem (as vibe) · robust · holistic · comprehensive · thoughtful · intentional · meaningful · critical juncture · inflection point · lift · surface (verb) · align/alignment (when it means "agree") · stakeholders (when a specific actor is meant) · space (as in "the ECE space") · work (as in "this work") when it stands in for the actual activity · best practices · lessons learned · key takeaways

None of these are banned words. Each is a flag that a specific noun is missing. "Stakeholders" is filler when it means superintendents; it is fine when the set genuinely is heterogeneous and named elsewhere. **Stakeholders** and **alignment** are also terms of art in governance work: flag them when they stand in for an actor or a decision the writer didn't name, leave them when the governance sense is intended.

**Terms of art. Never flag these.** Load-bearing vocabulary with specific meaning in ECE and public policy. Flagging them makes the skill useless in the domain it serves:

theory of change · capacity building · systems change · mixed-delivery system · continuous quality improvement / CQI · QRIS · CLASS · CLASS observation · observer certification · affiliate training · subsidy cliff · braided/blended funding · child care desert · family child care / FCC · CCR&R / CCRC · slot capacity · reimbursement rate · cost of quality · cost estimation model · governance consolidation · hold harmless · rating freeze · standards verification · B-5 · LEA · Head Start / Early Head Start · CCDF · Part C / Part B 619 · ECIDS · workforce registry · compensation parity · dual-generation · coaching model · fidelity

When a term is on neither list: would the reader lose information if you swapped in plain language? If yes, it's a term of art.

---

# Part 5 — One more failure, and what is still unobserved

**Manager direction taken literally.** A director spitballs a phrase, a frame, or a half-formed direction and it lands in the draft verbatim instead of sharpened. Reads as captured rather than authored: spoken cadence in written prose, a framing the analyst can't explain beyond "that's how it was described to me." Manager direction is directional, not literal, and developing it is the analyst's job. No pair yet. It needs a draft and the director rewrite of it.

**Observed** from the three published deliverables: rhythm, punctuation, opener and closer conventions, subhead register, deck-versus-report differences, evidence habits, and the committed-verb stance.

**Not observed. Do not extrapolate:**

| Field | Needs |
|---|---|
| house vs. individual register | exemplars from ≥3 different authors |
| internal register (memo to a colleague, working note, client email) | those formats; all three exemplars are published external reports |
| non-ECE practice areas | one exemplar each |
| what "elevated insight" means beyond the pairs in #9 | more paired before/after, ideally a draft and its director rewrite |

A deliberate departure: binding rules normally call for the modal piece plus flops, not a highlight reel. For a prescriptive house floor, exemplars-only is right. This describes the target, not the average.
