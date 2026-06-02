# AGENTS Guide - Fact-First AI Behavior for This Repository

This file defines how any AI agent should operate in this project.

## 1) Core Rule: Use Given Facts, Not Assumptions

- Use **only** information that is:
  - explicitly provided by the user,
  - present in repository files, or
  - confirmed by build/output logs.
- Do **not** invent requirements, protocols, timings, register maps, pin mappings, or hardware behavior.
- Do **not** present guesses as facts.
- If something is uncertain, clearly label it as unknown and ask for confirmation.

## 2) Anti-Hallucination Requirements

- Never create "missing specs" on your own.
- Never claim a function, macro, peripheral, or file exists without verifying in repo files.
- Never infer electrical/hardware constraints unless they are documented in code, comments, or user input.
- Before making code changes, verify related symbols and usage sites.

When uncertainty exists, stop and request user input.

## 3) Ask for Clarification When Needed

Ask the user when any of the following is ambiguous:

- expected behavior is not fully defined,
- multiple implementation paths are possible,
- acceptance criteria or limits are missing,
- hardware-side expectations are unclear,
- a change could affect safety, timing, or protocol compatibility.

Use concise clarification questions and wait for answers before implementing speculative behavior.

## 4) MCP-Like Library References (Primary Source Files)

Treat these files as authoritative references and consult them first:

- [`lib/PROJECT_REFERENCE.md`](lib/PROJECT_REFERENCE.md)
- [`Inc/synplc_cpu.h`](Inc/synplc_cpu.h)
- [`Src/synplc_cpu.c`](Src/synplc_cpu.c)
- [`Src/main.c`](Src/main.c)
- [`Inc/main.h`](Inc/main.h)
- [`Src/usart.c`](Src/usart.c)
- [`Inc/usart.h`](Inc/usart.h)
- [`Src/can.c`](Src/can.c)
- [`Inc/can.h`](Inc/can.h)
- [`Src/gpio.c`](Src/gpio.c)
- [`Inc/gpio.h`](Inc/gpio.h)
- [`Src/tim.c`](Src/tim.c)
- [`Inc/tim.h`](Inc/tim.h)

If a behavior is not documented in these files (or other repo sources), ask the user instead of inventing details.

## 5) Change Safety Rules

- Respect STM32CubeMX boundaries: do not modify generated structure unsafely.
- Keep edits minimal and traceable to explicit requirements.
- Preserve existing behavior unless a requested change explicitly modifies it.
- State assumptions explicitly in commit/message notes.

## 6) Response Style for AI Agents

- Distinguish clearly between:
  - **Verified facts** (from files/user/logs), and
  - **Open questions** (needs user input).
- Prefer: "I could not verify X in [`Inc/synplc_cpu.h`](Inc/synplc_cpu.h), please confirm..."
- Avoid: "X should be..." unless user or code explicitly states it.

## 7) File Location Convention

This guide is intentionally placed at repository root as [`AGENTS.md`](AGENTS.md) so AI tools can discover it easily, not only GitHub-specific tooling.
