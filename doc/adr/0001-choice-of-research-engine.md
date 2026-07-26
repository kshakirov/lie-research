# ADR 0001: Choice of Research Engine and Encoding Standards

## Status
Proposed

## Context
For our R&D project on Lie Algebras, we need a robust symbolic computation environment that handles non-constructive mathematics, abstract commutator relations, and Jacobi identities out of the box. 

Additionally, we faced encoding issues (`krakozyabry`) when printing Cyrillic characters via `wolframscript` CLI on macOS terminal environments.

## Decision
1. **Engine**: Use Wolfram Language (`wolframscript`) via pure text-based `.wl` files for version control friendliness.
2. **Language & Encoding**: Standardize all code comments, CLI `Print` outputs, and console logs strictly to **English (ASCII)** to guarantee seamless cross-platform execution (macOS/Linux/Windows) without locale overhead.

## Consequences
* High-performance symbolic math without manual matrix boilerplate.
* Clean Git diffs (no binary notebook clutter).
* 100% predictable terminal output across all development nodes.

